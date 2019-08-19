//
//  Military.swift
//  p3
//
//  Created by Constance Masniaud on 25/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Military: Character {
    init(nameChoice: String) {
        super.init(characterType: "🔫 Military 🔫", characterNameChoice: nameChoice, weapon: Gun(), lifePoints: 100)
    }
    
    static func showAllCharacters(number: Int) {
        let nameAndDamage = Gun.nameAndDamage()
        print("\(number) Mike the Military    100 \(nameAndDamage)")
    }
}
