//
//  LogInViewController.swift
//  LoginApp
//
//  Created by Дмитрий Кириченко on 19.10.2020.
//

import UIKit

class LogInViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private properties
    private let userName = "User"
    private let password = "1234"
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "logIn" else { return }
        let welcomeVC = segue.destination as! WelcomeViewController
        welcomeVC.userName = userNameTextField.text
    }
    
    
  
    // MARK: - IB Actions
    @IBAction func logInButtonPressed() {
    }
    
    @IBAction func forgotUserNamePressed() {
    }
    
    @IBAction func forgotPasswordPressed() {
    }
    
}

