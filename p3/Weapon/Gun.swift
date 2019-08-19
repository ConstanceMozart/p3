//
//  Gun.swift
//  p3
//
//  Created by Constance Masniaud on 25/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Gun: Weapon {
    init(){
        super.init(damage: 80, nameWeapon: "Weapon6")
    }
    
    static func nameAndDamage() -> String {
        let nameAndDamage = "\(Gun().nameWeapon)  : \(Gun().damage) Power."
        return nameAndDamage
    }
}
