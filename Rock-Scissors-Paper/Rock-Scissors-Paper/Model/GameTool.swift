//
//  GameMessage.swift
//  Rock-Scissors-Paper
//
//  Created by LIMGAUI on 2021/12/01.
//

import Foundation

enum GameResult {
    case win, lose, draw
    
    var message: String {
        switch self {
        case .win:
            return "승"
        case .lose:
            return "패"
        case .draw:
            return "무승부"
        }
    }
}

enum GameHand: CaseIterable {
    case rock, scicssors, paper
}


