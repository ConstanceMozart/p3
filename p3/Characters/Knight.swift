//
//  Knight.swift
//  p3
//
//  Created by Constance Masniaud on 25/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Knight: Character {
    init(nameChoice: String) {
        super.init(characterType: "⚔️ Knight ⚔️", characterNameChoice: nameChoice, weapon: MedievalAxe(), lifePoints: 100)
    }
    
    static func showAllCharacters(number: Int) {
        let nameAndDamage = MedievalAxe.nameAndDamage()
        print("\(number) Jean Eudes the Knight    100 \(nameAndDamage)")
        
    }
}
