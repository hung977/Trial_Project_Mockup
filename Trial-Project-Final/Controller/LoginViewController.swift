//
//  LoginViewController.swift
//  Trial-Project-Final
//
//  Created by TPS on 7/17/20.
//  Copyright © 2020 TPS. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    let username = "hungphan"
    let password = "123123"
    // MARK: - IBOutlet
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwdTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        usernameTextField.delegate = self
        passwdTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    // MARK: - UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }
   
    // MARK: - Action
    @IBAction func loginBtnTapped(_ sender: UIButton) {
        hideKeyboard()
        if let user = usernameTextField.text, let pass = passwdTextField.text {
            if user == username && pass == password {
                performSegue(withIdentifier: "loginSegue", sender: self)
            } else {
                self.alertFailLogin()
            }
        } else {
            self.alertFailLogin()
        }
    }
    
    // MARK: - Func support
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "loginSegue" {
            let vc = segue.destination
            vc.modalPresentationStyle = .fullScreen
        }
    }
    func hideKeyboard() {
        passwdTextField.endEditing(true)
        usernameTextField.endEditing(true)
    }
    func alertFailLogin() {
        let alert = UIAlertController(title: "Oops!", message: "username or password incorrect.", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    func updateUI() {
        loginButton.layer.cornerRadius = 10
    }

}
