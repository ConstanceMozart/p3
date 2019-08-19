//
//  LaserInEyes.swift
//  p3
//
//  Created by Constance Masniaud on 25/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class LaserInEyes: Weapon {
    init(){
        super.init(damage: 100, nameWeapon: "MaceClubWithSpikes")
    }
    
    static func nameAndDamage() -> String {
        let nameAndDamage = "\(LaserInEyes().nameWeapon)  : \(LaserInEyes().damage) Power."
        return nameAndDamage
    }
}
