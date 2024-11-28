//
//  Vista3TestUITests.swift
//  Vista3TestUITests
//
//  Created by User-UAM on 11/27/24.
//

import XCTest

class Vista3TestUITests: XCTestCase {

    let app = XCUIApplication()
       
       override func setUpWithError() throws {
           continueAfterFailure = false
           app.launch()
       }
       
       func testSwipeUpAndSwipeDown() {
           let tableView = app.tables["tableView"]
           XCTAssertTrue(tableView.exists, "La TableView existe")
           
           let firstCell = tableView.cells.element(boundBy: 0)
           XCTAssertTrue(firstCell.exists, "La primera celda existe")
           
           tableView.swipeUp()
           
           let lastCell = tableView.cells.element(boundBy: 2)
           XCTAssertTrue(lastCell.exists, "La última celda es visible")
           
           tableView.swipeDown()
           
           XCTAssertTrue(firstCell.exists, "La primera celda es visible")
       }
       
       func testSwipeLeftToDelete() {
           let tableView = app.tables["tableView"]
           XCTAssertTrue(tableView.exists, "La TableView existe")
           
           let cell = tableView.cells.element(boundBy: 0)
           XCTAssertTrue(cell.exists, "La primera celda existe")
           
           cell.swipeLeft()
           
           
       }
       
       func testSwipeRightOnCell() {
           let tableView = app.tables["tableView"]
           XCTAssertTrue(tableView.exists, "La TableView existe")
           
           let cell = tableView.cells.element(boundBy: 0)
           XCTAssertTrue(cell.exists, "La primera celda existe")
           
           cell.swipeRight()
           
           XCTAssertTrue(cell.exists, "La celda todavía es visible")
       }
    }

   

