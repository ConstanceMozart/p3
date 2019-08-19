//
//  Robot.swift
//  p3
//
//  Created by Constance Masniaud on 25/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Robot: Character {
    init(nameChoice: String) {
        super.init(characterType: "🧿 Robot 🧿", characterNameChoice: nameChoice, weapon: LaserInEyes(), lifePoints: 100)
    }
    
    static func showAllCharacters(number: Int) {
        let nameAndDamage = LaserInEyes.nameAndDamage()
        print("\(number) A440 the Robot    100 \(nameAndDamage)")
    }
}
