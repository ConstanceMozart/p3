//
//  Samouraï.swift
//  p3
//
//  Created by Constance Masniaud on 25/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Samourai: Character {
    init(nameChoice: String) {
        super.init(characterType: "⛩ Samourai ⛩", characterNameChoice: nameChoice, weapon: Naginata(), lifePoints: 100)
    }
    
    static func showAllCharacters(number: Int) {
        let nameAndDamage = Naginata.nameAndDamage()
        print("\(number) Ping Pong The Samourai    100 \(nameAndDamage)")
        
    }
}
