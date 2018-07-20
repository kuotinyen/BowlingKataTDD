//
//  BowlingKataTDDTests.swift
//  BowlingKataTDDTests
//
//  Created by TING YEN KUO on 2018/7/20.
//  Copyright © 2018年 TING YEN KUO. All rights reserved.
//

import XCTest
@testable import BowlingKataTDD

class BowlingKataTDDTests: XCTestCase {
    
    var game: Game!
    
    override func setUp() {
        super.setUp()
        
        game = Game()
    }
    
    override func tearDown() {
        game = nil
        
        super.tearDown()
    }
    
    func rollMany(pins: Int, times: Int) {
        for _ in 1...times {
            game.roll(pins)
        }
    }
    
    func testNoScore() {
        let n = 20
        let pins = 0
        
        rollMany(pins: pins, times: n)
        
        XCTAssertEqual(0, game.score())
    }
    
    func testAllOneScore() {
        let n = 20
        let pins = 1
        
        rollMany(pins: pins, times: n)
        
        XCTAssertEqual(20, game.score())
    }
    
    func testOneSpare() {
        game.roll(5)
        game.roll(5)
        
        game.roll(3)
        
        rollMany(pins: 0, times: 17)
        XCTAssertEqual(game.score(), 16)
    }
    
    func testOneStrike() {
        game.roll(10)
        game.roll(3)
        game.roll(4)
        
        rollMany(pins: 0, times: 16)
        XCTAssertEqual(game.score(), 24)
    }
    
    func testPerfectGmae() {
        rollMany(pins: 10, times: 12)
        XCTAssertEqual(game.score(), 300)
    }
    
}
