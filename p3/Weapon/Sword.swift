//
//  Sword.swift
//  p3
//
//  Created by Constance Masniaud on 25/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Sword: Weapon {
    init(){
        super.init(damage: 20, nameWeapon: "Sword")
    }
    
    static func nameAndDamage() -> String {
        let nameAndDamage = "\(Sword().nameWeapon)  : \(Sword().damage) Power."
        return nameAndDamage
    }
}
