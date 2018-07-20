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
            if isSpare(frameIndex) {
                score += 10 + spareBonus(frameIndex)
            } else {
                score += noBonusSum(frameIndex)
            }
            
            frameIndex += 2
        }
        
        return score
    }
    
    func isSpare(_ frameIndex: Int) -> Bool {
        return rolls[frameIndex] + rolls[frameIndex + 1] == 10
    }
    
    func spareBonus(_ frameIndex: Int) -> Int {
        return rolls[frameIndex+2]
    }
    
    func noBonusSum(_ frameIndex: Int) -> Int {
        return rolls[frameIndex] + rolls[frameIndex+1]
    }
}
