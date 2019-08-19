//
//  Flail.swift
//  p3
//
//  Created by Constance Masniaud on 25/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Flail: Weapon {
    init(){
        super.init(damage: 30, nameWeapon: "Flail")
    }
    
    static func nameAndDamage() -> String {
        let nameAndDamage = "\(Flail().nameWeapon)  : \(Flail().damage) Power."
        return nameAndDamage
    }
}
