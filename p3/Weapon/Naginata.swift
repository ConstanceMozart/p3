//
//  Nigiata.swift
//  p3
//
//  Created by Constance Masniaud on 25/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Naginata : Weapon {
    init(){
        super.init(damage: 30, nameWeapon: "Nunchaku")
    }
    
    static func nameAndDamage() -> String {
        let nameAndDamage = "\(Naginata().nameWeapon)  : \(Naginata().damage) Power."
        return nameAndDamage
    }
}
