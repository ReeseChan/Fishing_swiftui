//
//  Game.swift
//  fishing
//
//  Created by Reese Chan on 2022/5/14.
//

import Foundation

struct Game {
    var target = Int.random(in: 2...99)
    var score = 0
    var round = 1
    var highestScore = 0
    
    func points(slideValue: Int) -> Int {
        
        return 100 - abs(target - slideValue)
    }
}
