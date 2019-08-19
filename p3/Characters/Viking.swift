//
//  Viking.swift
//  p3
//
//  Created by Constance Masniaud on 25/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Viking: Character {
    init(nameChoice: String) {
        super.init(characterType: "🛶 Viking 🛶", characterNameChoice: nameChoice, weapon: Flail(), lifePoints: 100)
    }
    
    static func showAllCharacters(number: Int) {
        let nameAndDamage = Flail.nameAndDamage()
        print("\(number) Thor the Viking    100 \(nameAndDamage)")
        
    }
}
