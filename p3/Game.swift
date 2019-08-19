//
//  Game.swift
//  p3
//
//  Created by Constance Masniaud on 01/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Game {
    //properties of game
    let player1: Player
    let player2: Player
    
    init (player1: Player, player2: Player) {
        self.player1 = player1
        self.player2 = player2
        setEnterName()
        playerTeamCreation()
        presentationTeams()
    }
    
    //methods of game
    func setEnterName() {
        gameLaunch()
        player1.enterAName(enemy: player2)
        player2.enterAName(enemy: player1)
    }
    
    func playerTeamCreation() {
        while player1.fighters.count < 3 && player2.fighters.count < 3 {
            Player.countFighters += 1
            player1.teamCreation(enemy: player2)
            player2.teamCreation(enemy: player1)
                }
    }

    func presentationTeams() {
        player1.displayeTeam()
        player2.displayeTeam()
    }
    
    func gameLaunch() {
        print("🙋🏼‍♂️ Welcome to The Game : Historical Fight 💥 \n\n ")
    }
}



//let randomIndex = Int(arc4random_uniform(UInt32(Character)))

