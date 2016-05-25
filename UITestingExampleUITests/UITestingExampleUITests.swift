//
//  UITestingExampleUITests.swift
//  UITestingExampleUITests
//
//  Created by Lakshmi Bomma on 5/17/16.
//  Copyright © 2016 riis. All rights reserved.
//

import XCTest

class UITestingExampleUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    
    func testExample()
    {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let app = XCUIApplication()
        let typeSomethingElementsQuery = app.otherElements.containingType(.Button, identifier:"Type something")
        typeSomethingElementsQuery.childrenMatchingType(.Button)["Type something"].childrenMatchingType(.Button)["Type something"].tap()
        typeSomethingElementsQuery.childrenMatchingType(.Button)["Type something"].typeText("test")
        app.buttons["Click to copy name"].tap();
        
        XCTAssert(app.buttons["test"].exists)
        
    }
    
    func testGotoNextScreen()
    {
        
        let app = XCUIApplication()
        app.buttons["Go to next screen"].tap()
        
        let nextElement:XCUIElement = app.staticTexts["Welcome to UITesting with Xcode"]
        
        XCTAssertEqual(nextElement.exists, true)
        
    }
    
    func testNextPage()
    {
        
        let app = XCUIApplication()
        let typeSomethingElementsQuery = app.otherElements.containingType(.Button, identifier:"Type something")
        
        typeSomethingElementsQuery.childrenMatchingType(.Button)["Type something"].childrenMatchingType(.Button)["Type something"].tap()
        typeSomethingElementsQuery.childrenMatchingType(.Button)["Type something"].typeText("testing")
        
        app.buttons["Click to copy name"].tap()
        
        let cells = app.tables.cells
        
        XCTAssertEqual(cells.count, 5, "found instead: \(cells.debugDescription)")
        
        app.tables.staticTexts["testing"].tap()
        

        //pushing view controller test
        let nextElement:XCUIElement = app.staticTexts["Welcome to UITesting with Xcode"]
        
        XCTAssertEqual(nextElement.exists, true)        
    }

    
}
