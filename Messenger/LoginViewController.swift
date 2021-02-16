//
//  ViewController.swift
//  Messenger
//
//  Created by pop on 1/27/21.
//

import UIKit

class LoginViewController: UIViewController {

    //Mark IBOutlets
    //Labels
    @IBOutlet weak var SignUpLabel: UILabel!
    
    //TextFields
    @IBOutlet weak var StudentNumberTextField: UITextField!
    @IBOutlet weak var PasswordTextField: UITextField!
    @IBOutlet weak var StatusTextField: UITextField!
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var SurnameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    let status = ["Faculty member", "Researcher", "2nd Student", "3rd Student", "4th Student", "M.Eng", "Ph.D", "Administrative staff", "Labratory staff"]
    
    var statusPickerView = UIPickerView()
    
    //Buttons
    @IBOutlet weak var LogInButtonOutlet: UIButton!
    @IBOutlet weak var SignUpButtonOutlet: UIButton!
    @IBOutlet weak var ForgetPasswordButtonOutlet: UIButton!
    
    
    //Mark View LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUIFor(login: true)
        
        setupTextFieldDelegates()
        setupBackgroundTap()
        
        StatusTextField.inputView = statusPickerView
        
        statusPickerView.delegate = self
        statusPickerView.dataSource = self
        statusPickerView.tag = 1
        
    }
    
    //Mark IBActions
    @IBAction func LogInButtonPressed(_ sender: Any) {
    }
    
    @IBAction func ForgetPasswordButtonPressed(_ sender: Any) {
    }
    
    @IBAction func SingUpButtonPressed(_ sender: UIButton) {
        updateUIFor(login: sender.titleLabel?.text == "Log In.")
    }
    
    
    //Mark Set up
    private func setupTextFieldDelegates(){
        StudentNumberTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        PasswordTextField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField){
        //print("c")
    }
    
    private func setupBackgroundTap() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(backgroundTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func backgroundTap(){
        view.endEditing(false)
        //print("bj")
    }
    
    
    //Mark Animation
    
    private func updateUIFor(login: Bool) {
        LogInButtonOutlet.setTitle( login ? "Log In" : "Register" , for: .normal)
        SignUpButtonOutlet.setTitle(login ? "Sign Up." : "Log In.", for: .normal)
        SignUpLabel.text = login ? "Don't have an account?" : "Have an acccount?"
        
        UIView.animate(withDuration: 0.5) {
            self.NameTextField.isHidden = login
            self.SurnameTextField.isHidden = login
            self.StatusTextField.isHidden = login
            self.emailTextField.isHidden = login
        }
    }
    
    //Mark - Navigation
    private func goToApp() {
        
        let mainView = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "MainView") as! UITabBarController
        
        mainView.modalPresentationStyle = .fullScreen
        self.present(mainView, animated: true, completion: nil)
    }
    
}

extension LoginViewController: UIPickerViewDataSource, UIPickerViewDelegate {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return status.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return status[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        StatusTextField.text = status[row]
        StatusTextField.resignFirstResponder()
    }
}
