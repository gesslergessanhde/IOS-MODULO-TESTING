//
//  Vista1TestUITests.swift
//  Vista1TestUITests
//
//  Created by User-UAM on 11/27/24.
//

import XCTest

class Vista1TestUITests: XCTestCase {
        
    let app = XCUIApplication()
        
        override func setUpWithError() throws {
            continueAfterFailure = false
            app.launch()
        }
        
        func testLoginViewElementsExist() {
            XCTAssertTrue(app.staticTexts["Login"].exists, "El título Login debería existir")
            XCTAssertTrue(app.textFields["User"].exists, "El campo de texto para usuario debería existir")
            XCTAssertTrue(app.secureTextFields["Password"].exists, "El campo de texto para contraseña debería existir")
            XCTAssertTrue(app.buttons["Login"].exists, "El botón de Login debería existir")
            XCTAssertTrue(app.buttons["Register"].exists, "El botón de Register debería existir")
        }
        
        func testLoginButtonInteraction() {
            let userTextField = app.textFields["User"]
            userTextField.tap()
            userTextField.typeText("test_user")
            
            let passwordTextField = app.secureTextFields["Password"]
            passwordTextField.tap()
            passwordTextField.typeText("test_password")
            
            let loginButton = app.buttons["Login"]
            XCTAssertTrue(loginButton.isEnabled, "El botón Login debería estar habilitado tras ingresar datos")
            loginButton.tap()
            
            // No hay redirección, simplemente aseguramos la interacción
            XCTAssertTrue(app.staticTexts["Login"].exists, "El título Login debería seguir visible después de pulsar el botón")
        }
}
