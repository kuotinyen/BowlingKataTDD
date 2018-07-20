//
//  Game.swift
//  BowlingKataTDD
//
//  Created by TING YEN KUO on 2018/7/20.
//  Copyright © 2018年 TING YEN KUO. All rights reserved.
//

import Foundation

class Game {
    private var rolls = [Int](repeating: 0, count: 21)
    private var currentRoll = 0
    
    func roll(_ pins: Int) {
        rolls[currentRoll] = pins
        currentRoll += 1
    }
    
    func score() -> Int {
        var score = 0
        var frameIndex = 0
        
        for _ in 1...10 {
            score += (rolls[frameIndex] + rolls[frameIndex+1])
            frameIndex += 2
        }
        
        return score
    }
}
