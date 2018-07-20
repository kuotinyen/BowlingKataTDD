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
    
    func testNoScore() {
        let score = 0
        
        for i in 0..<20 {
            game.roll(0)
        }
        
        XCTAssertEqual(score, game.score())
        
    }
    
}
