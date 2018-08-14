//
//  UITestingUITests.swift
//  UITestingUITests
//
//  Created by No, Daniel on 8/13/18.
//  Copyright © 2018 No, Daniel. All rights reserved.
//

import XCTest
@testable import UITesting

class UITestingUITests: XCTestCase {
    let app = XCUIApplication()

    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTableView(){
        // Find tabbaritem by title
        let tabBarItem = app.tabBars.buttons["table-tab"]
        XCTAssertNotNil(tabBarItem)
        tabBarItem.tap()
        
    }
    
    func testPresentViewController() {
        // Find tabbaritem by title
        let tabBarItem = app.tabBars.buttons["nav-tab"]

        XCTAssertNotNil(tabBarItem)
        tabBarItem.tap()
        
        let button = app.buttons["btnAccessibiityIdentifier"]
        XCTAssertTrue(button.exists)
        button.tap()
        
        // Find ui element by accessibility identifer
        let vcLabel = app.staticTexts["labelAccessibilityIdentifier"]
        let customBtn = app.buttons["custombutton"]


        XCTAssert(vcLabel.exists)
        XCTAssertTrue(customBtn.exists)
        print("label : " + vcLabel.label)
        XCTAssertTrue(vcLabel.label == "View Controller 2")
        customBtn.tap()
        XCTAssertTrue(vcLabel.label == "text changed")
        
        
        
    }
    
}
