//
//  MainMenuTests.swift
//  JorinapekaTests
//
//  Created by Jakub Zagórowicz on 02/03/2020.
//  Copyright © 2020 Jakub Zagórowicz. All rights reserved.
//

import XCTest

class MainMenuTests: XCTestCase {

    var mothership: Mothership?
    
    override func setUp() {
        mothership = Mothership()
    }

    override func tearDown() {
        mothership = nil
    }

    func builderTest() {
        let vc = Builder.buildMainMenu(router: mothership!)
        
        XCTAssertNotNil(vc.presenter)
    }
}
