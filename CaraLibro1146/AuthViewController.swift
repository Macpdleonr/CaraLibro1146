//
//  AuthViewController.swift
//  CaraLibro1146
//
//  Created by user191544 on 6/24/22.
//

import UIKit
import FirebaseAuth

class AuthViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var forgetPassButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Login"
        
    }

    @IBAction func logInButtonAction(_ sender: Any) {
    }
    
    @IBAction func forgetPassButtonAction(_ sender: Any) {
    }
    @IBAction func signUpButtonAction(_ sender: Any) {
    }
    
}

