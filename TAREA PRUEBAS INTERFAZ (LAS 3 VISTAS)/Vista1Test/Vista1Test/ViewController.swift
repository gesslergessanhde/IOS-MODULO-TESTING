import UIKit

class ViewController: UIViewController {
    
    let titleLabel = UILabel()
    let userTextField = UITextField()
    let passwordTextField = UITextField()
    let loginButton = UIButton(type: .system)
    let registerButton = UIButton(type: .system)
    
    let padding: CGFloat = 20.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupUI()
    }
    
    func setupUI() {
        // Configuración del título
        titleLabel.text = "Login"
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        titleLabel.textAlignment = .center
        
        // Configuración de los TextFields
        userTextField.placeholder = "User"
        userTextField.borderStyle = .roundedRect
        
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        
        // Configuración de los botones
        loginButton.setTitle("Login", for: .normal)
        loginButton.backgroundColor = .systemBlue
        loginButton.tintColor = .white
        loginButton.layer.cornerRadius = 8
        
        registerButton.setTitle("Register", for: .normal)
        registerButton.tintColor = .systemBlue
        
        setupConstraints()
    }
    
    func setupConstraints() {
        [titleLabel, userTextField, passwordTextField, loginButton, registerButton].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: padding * 2),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            userTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: padding * 2),
            userTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: padding),
            userTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -padding),
            
            passwordTextField.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: padding),
            passwordTextField.leadingAnchor.constraint(equalTo: userTextField.leadingAnchor),
            passwordTextField.trailingAnchor.constraint(equalTo: userTextField.trailingAnchor),
            
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: padding * 2),
            loginButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            loginButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: padding),
            registerButton.centerXAnchor.constraint(equalTo: loginButton.centerXAnchor)
        ])
    }
}

