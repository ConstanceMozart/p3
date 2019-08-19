//
//  Gladiator.swift
//  p3
//
//  Created by Constance Masniaud on 24/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Gladiator : Character {
    init(nameChoice: String){
        super.init(characterType: "⛓ Gladiator ⛓", characterNameChoice: nameChoice, weapon: Sword(), lifePoints: 100)
    }
    
    static func showAllCharacters(number: Int) {
        let nameAndDamage = Sword.nameAndDamage()
        print("\(number) Spartacus the gladiator    100 \(nameAndDamage)")
        
    }
}
