//
//  User.swift
//  Messenger
//
//  Created by pop on 2/22/21.
//

import Foundation
import Alamofire

var obj = LoginViewController()

let params = ["name": obj.NameTextField.text!,
            "surname": obj.SurnameTextField.text!,
            "student number": obj.StudentNumberTextField.text!
            
    ]

let apiMethod = "https://9ef7ffe9-4841-4089-ba5a-ee467082da30.mock.pstmn.io"

func APIrequest() {
}

//Mock up database = https://9ef7ffe9-4841-4089-ba5a-ee467082da30.mock.pstmn.io
