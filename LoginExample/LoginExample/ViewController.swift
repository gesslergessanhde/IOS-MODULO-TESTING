import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userTextFiel: UITextField!
    @IBOutlet var passwordTextFiel: UITextField!
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var registerButton: UIButton!
    @IBOutlet var loginValidationLabel: UILabel!
    
    override func viewDidLoad() {
            super.viewDidLoad()
            
            
            loginButton.addTarget(self, action: #selector(navigateToMainView), for: .touchUpInside)
            registerButton.addTarget(self, action: #selector(navigateToRegisterView), for: .touchUpInside)
            
            setupValidationLabel()
            setValidationLabel()
        }
        
        
        @objc func navigateToMainView(sender: UIButton!) {
            let validationError = validateCredentials(username: userTextFiel.text, password: passwordTextFiel.text)
            
            if let errorMessage = validationError {
                setBadValidationLabel(message: errorMessage)
            } else {
                let mainViewController = MainViewController()
                self.navigationController?.pushViewController(mainViewController, animated: true)
                setValidationLabel()
            }
        }
        
        
        @objc func navigateToRegisterView(sender: UIButton!) {
            let registerViewController = RegisterViewController()
            self.navigationController?.pushViewController(registerViewController, animated: true)
        }

        /// errores para cada uno de los escenarios en los que el usuario arruina el codigo a mas  no poder
        func validateCredentials(username: String?, password: String?) -> String? {
            guard let username = username, !username.isEmpty else {
                return "El nombre de usuario no puede estar vacío."
            }
            
            guard let password = password, !password.isEmpty else {
                return "La contraseña no puede estar vacía."
            }
            
            if username != "Admin" {
                return "El nombre de usuario es incorrecto."
            }
            
            if password != "Admin123" {
                return "La contraseña es incorrecta."
            }
            
            return nil // No hay errores
        }
    
        
        func validateRegistration(username: String?, password: String?) -> String? {
            guard let username = username, !username.isEmpty else {
                return "El nombre de usuario no puede estar vacío."
            }
            
            guard let password = password, !password.isEmpty else {
                return "La contraseña no puede estar vacía."
            }
            return nil
        }
    
    
    
            //Esto pa que se vea el texto completo
            func setupValidationLabel() {
            loginValidationLabel.numberOfLines = 0
            loginValidationLabel.adjustsFontSizeToFitWidth = true
            loginValidationLabel.lineBreakMode = .byWordWrapping
            loginValidationLabel.textAlignment = .center
        }
    
        func setBadValidationLabel(message: String) {
            loginValidationLabel.text = message
            loginValidationLabel.textColor = .red
        }
        
        
        func setValidationLabel() {
            loginValidationLabel.text = ""
            loginValidationLabel.textColor = .black
        }
    }

   

