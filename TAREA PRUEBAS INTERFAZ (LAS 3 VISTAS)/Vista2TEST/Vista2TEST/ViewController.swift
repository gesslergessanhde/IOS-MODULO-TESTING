//
//  ViewController.swift
//  Vista2TEST
//
//  Created by User-UAM on 11/27/24.
//

import UIKit

class ViewController: UIViewController {

    
        let titleLabel = UILabel()
        let nameTextField = UITextField()
        let userIDTextField = UITextField()
        let phoneTextField = UITextField()
        let passwordTextField = UITextField()
        let repeatPasswordTextField = UITextField()
        let registerButton = UIButton(type: .system)
        
        let padding: CGFloat = 20.0
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .systemBackground
            setupUI()
        }
        
        func setupUI() {
            titleLabel.text = "Register"
            titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
            titleLabel.textAlignment = .center
            
            // Configuración de los TextFields
            [nameTextField, userIDTextField, phoneTextField, passwordTextField, repeatPasswordTextField].forEach {
                $0.borderStyle = .roundedRect
            }
            nameTextField.placeholder = "Name"
            userIDTextField.placeholder = "UserID"
            phoneTextField.placeholder = "Phone"
            passwordTextField.placeholder = "Password"
            passwordTextField.isSecureTextEntry = true
            repeatPasswordTextField.placeholder = "Repeat Password"
            repeatPasswordTextField.isSecureTextEntry = true
            
            registerButton.setTitle("Register", for: .normal)
            registerButton.backgroundColor = .systemBlue
            registerButton.tintColor = .white
            registerButton.layer.cornerRadius = 8
            
            setupConstraints()
        }
        
        func setupConstraints() {
            [titleLabel, nameTextField, userIDTextField, phoneTextField, passwordTextField, repeatPasswordTextField, registerButton].forEach {
                view.addSubview($0)
                $0.translatesAutoresizingMaskIntoConstraints = false
            }
            
            NSLayoutConstraint.activate([
                titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding * 2),
                titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                nameTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: padding * 2),
                nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
                nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
                
                userIDTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: padding),
                userIDTextField.leadingAnchor.constraint(equalTo: nameTextField.leadingAnchor),
                userIDTextField.trailingAnchor.constraint(equalTo: nameTextField.trailingAnchor),
                
                phoneTextField.topAnchor.constraint(equalTo: userIDTextField.bottomAnchor, constant: padding),
                phoneTextField.leadingAnchor.constraint(equalTo: userIDTextField.leadingAnchor),
                phoneTextField.trailingAnchor.constraint(equalTo: userIDTextField.trailingAnchor),
                
                passwordTextField.topAnchor.constraint(equalTo: phoneTextField.bottomAnchor, constant: padding),
                passwordTextField.leadingAnchor.constraint(equalTo: phoneTextField.leadingAnchor),
                passwordTextField.trailingAnchor.constraint(equalTo: phoneTextField.trailingAnchor),
                
                repeatPasswordTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: padding),
                repeatPasswordTextField.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
                repeatPasswordTextField.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
                
                registerButton.topAnchor.constraint(equalTo: repeatPasswordTextField.bottomAnchor, constant: padding * 2),
                registerButton.leadingAnchor.constraint(equalTo: repeatPasswordTextField.leadingAnchor),
                registerButton.trailingAnchor.constraint(equalTo: repeatPasswordTextField.trailingAnchor),
                registerButton.heightAnchor.constraint(equalToConstant: 50)
            ])
        }
    }


