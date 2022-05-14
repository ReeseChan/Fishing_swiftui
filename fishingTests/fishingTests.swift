//
//  fishingTests.swift
//  fishingTests
//
//  Created by Reese Chan on 2022/5/14.
//

import XCTest
@testable import fishing

class fishingTests: XCTestCase {
    
    var game: Game!

    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testScorePositive() {
        let guess = game.target + 5
        let score = game.points(slideValue: guess)
        XCTAssertEqual(score, 95)
    }
    
    func testScoreNegative() {
        let guess = game.target - 5
        let score = game.points(slideValue: guess)
        XCTAssertEqual(score, 95)
    }

}
