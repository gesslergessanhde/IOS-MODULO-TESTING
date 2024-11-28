//
//  RegisterViewController.swift
//  LoginExample
//
//  Created by User on 5/12/23.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var errorLabel: UILabel!
    @IBOutlet var registerButton: UIButton!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            errorLabel.text = ""
            errorLabel.textColor = .red
            registerButton.addTarget(self, action: #selector(validateUser), for: .touchUpInside)
        }
        
        /// Función de validación de datos del registro
        @objc func validateUser(sender: UIButton!) {
            let validationError = validateRegistration(username: userTextField.text, password: passwordTextField.text)
            
            if let errorMessage = validationError {
                errorLabel.text = errorMessage
            } else {
                errorLabel.text = "Registro exitoso (simulado)"
                errorLabel.textColor = .green
            }
        }
        
        
        func validateRegistration(username: String?, password: String?) -> String? {
            
            guard let username = username, !username.isEmpty else {
                return "El nombre de usuario no puede estar vacío."
            }
            
            
            guard let password = password, !password.isEmpty else {
                return "La contraseña no puede estar vacía."
            }
            
            
            
            
            if password.contains("@") {
                return "@ no es un caracter permitido en contrasena."
            }
            
           
            return nil
        }
}
