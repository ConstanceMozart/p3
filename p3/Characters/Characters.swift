//
//  Characters brouillon.swift
//  p3
//
//  Created by Constance Masniaud on 28/06/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

// mother class of all characters
class Character {
    // properties / instance of character class
    var characterNameChoice : String
    let characterType: String
    var weapon: Weapon
    var lifePoints: Int
    let maxLifePoints = 100
    
    init (characterType: String, characterNameChoice: String, weapon: Weapon, lifePoints: Int) {
        self.characterNameChoice = characterNameChoice
        self.characterType = characterType
        self.weapon = weapon
        self.lifePoints = lifePoints
    }
    
    // functions for all characters
    
    func introduceOneself(number:Int) {
        print("\(number) \(characterNameChoice) the \(characterType) have \(lifePoints) life points use \(weapon.nameWeapon) with \(weapon.damage) of damage")
    }
    
    func attack(_ target: Character) {
        target.lifePoints -= self.weapon.damage
    }
    
    func isDead() -> Bool {
        var isDead = false
        if lifePoints <= 0 {
            print("\(self.characterNameChoice) is dead")
            isDead = true
        }
        return isDead
    }
}


