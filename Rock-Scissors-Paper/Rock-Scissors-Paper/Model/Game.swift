//
//  Computer.swift
//  Rock-Scissors-Paper
//  Created by LIMGAUI on 2021/12/01

import Foundation

enum Score {
    static var player: Int = 0
    static var computer: Int = 0
}

// 랜덤패 생성
func makeRandomHand() -> GameHand {
    let randomHand = GameHand.allCases.randomElement()!
    return randomHand
}

// 승패 판별
func compareGameResult() -> GameResult {
    // 결과를 반환할 인스턴스
    let gameResult = GameResult.self
    // 사용자와 컴퓨터 패 생성
    let playerHand = makeRandomHand()
    let computerHand = makeRandomHand()
    // 패를 비교해 승/패를 반환
    if (playerHand == .rock && computerHand == .paper),
       (playerHand == .scicssors && computerHand == .rock),
       (playerHand == .paper && computerHand == .scicssors) {
        return gameResult.win
    } else if playerHand == computerHand {
        return gameResult.draw
    } else {
        return gameResult.lose
    }
}

// 점수 정산
func calculateScore() -> Int {
    let gameResult = compareGameResult()
    switch gameResult {
    case .win:
        Score.player += 1
        return Score.player
    case .lose:
        Score.computer += 1
        return Score.player
    case .draw:
        return Score.player
    }
}

// 게임 진행
func playGame() {
    
}
