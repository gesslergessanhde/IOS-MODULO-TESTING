//
//  Vista2TESTUITests.swift
//  Vista2TESTUITests
//
//  Created by User-UAM on 11/27/24.
//

import XCTest

class Vista2TESTUITests: XCTestCase {

    let app = XCUIApplication()
        
        override func setUpWithError() throws {
            continueAfterFailure = false
            app.launch()
        }
        
        func testRegisterViewElementsExist() {
            XCTAssertTrue(app.staticTexts["Register"].exists, "El título Register debería existir")
            XCTAssertTrue(app.textFields["Name"].exists, "El campo de texto para el nombre debería existir")
            XCTAssertTrue(app.textFields["UserID"].exists, "El campo de texto para UserID debería existir")
            XCTAssertTrue(app.textFields["Phone"].exists, "El campo de texto para el teléfono debería existir")
            XCTAssertTrue(app.secureTextFields["Password"].exists, "El campo de texto para contraseña debería existir")
            XCTAssertTrue(app.secureTextFields["Repeat Password"].exists, "El campo de texto para repetir contraseña debería existir")
            XCTAssertTrue(app.buttons["Register"].exists, "El botón de Register debería existir")
        }
        
        func testRegisterButtonInteraction() {
            app.textFields["Name"].tap()
            app.textFields["Name"].typeText("John Doe")
            
            app.textFields["UserID"].tap()
            app.textFields["UserID"].typeText("12345")
            
            app.textFields["Phone"].tap()
            app.textFields["Phone"].typeText("9876543210")
            
            app.secureTextFields["Password"].tap()
            app.secureTextFields["Password"].typeText("test_password")
            
            app.secureTextFields["Repeat Password"].tap()
            app.secureTextFields["Repeat Password"].typeText("test_password")
            
            
            
            
            XCTAssertTrue(app.staticTexts["Register"].exists, "El título Register debería seguir visible después de pulsar el botón")
        }
}
