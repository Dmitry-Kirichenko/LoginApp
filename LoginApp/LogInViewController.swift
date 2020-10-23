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
        guard
            userNameTextField.text == userName,
            passwordTextField.text == password
                else {
            showAlert(title: "Wrong login or password", message: "Please, enter correct login or password", textField: passwordTextField)
            return
        }
        performSegue(withIdentifier: "logIn", sender: nil)
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(title: "Hey!", message: "User Name is \(userName)")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Hey!", message: "Password is \(password)")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
}

// MARK: - Alert Controller
extension LogInViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
