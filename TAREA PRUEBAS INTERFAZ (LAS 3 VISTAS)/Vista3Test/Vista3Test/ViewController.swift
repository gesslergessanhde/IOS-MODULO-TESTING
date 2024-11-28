//
//  ViewController.swift
//  Vista3Test
//
//  Created by User-UAM on 11/27/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    


        var tableView: UITableView!
        let welcomeLabel = UILabel()
        let profileImageView = UIImageView()
        let cardTitleLabel = UILabel()
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            view.backgroundColor = .white
            
            // Configuración del título "Welcome"
            welcomeLabel.text = "Welcome"
            welcomeLabel.font = UIFont.boldSystemFont(ofSize: 24)
            welcomeLabel.textAlignment = .center
            welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(welcomeLabel)
            
            // Configuración de la imagen de perfil
            profileImageView.image = UIImage(systemName: "person.circle")
            profileImageView.contentMode = .scaleAspectFit
            profileImageView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(profileImageView)
            
            // Configuración del título "Card Title"
            cardTitleLabel.text = "Card Title"
            cardTitleLabel.font = UIFont.systemFont(ofSize: 18)
            cardTitleLabel.textAlignment = .left
            cardTitleLabel.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(cardTitleLabel)
            
            // Configuración de la tabla
            tableView = UITableView(frame: .zero, style: .plain)
            tableView.accessibilityIdentifier = "tableView"
            tableView.translatesAutoresizingMaskIntoConstraints = false
            tableView.dataSource = self
            tableView.delegate = self
            view.addSubview(tableView)
            
            
            NSLayoutConstraint.activate([
                
                welcomeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
                welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                
                // Profile Image
                profileImageView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 10),
                profileImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                profileImageView.widthAnchor.constraint(equalToConstant: 80),
                profileImageView.heightAnchor.constraint(equalToConstant: 80),
                
                // Card Title Label
                cardTitleLabel.topAnchor.constraint(equalTo: profileImageView.bottomAnchor, constant: 20),
                cardTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
                cardTitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
                
                // TableView
                tableView.topAnchor.constraint(equalTo: cardTitleLabel.bottomAnchor, constant: 10),
                tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            ])
        }
    }

    // MARK: - Extensiones para el manejo de la tabla
    extension ViewController: UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
            cell.textLabel?.text = "Fila \(indexPath.row)"
            return cell
        }
    }




