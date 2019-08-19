//
//  MedievalAxe.swift
//  p3
//
//  Created by Constance Masniaud on 25/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class MedievalAxe: Weapon {
    init(){
        super.init(damage: 50, nameWeapon: "MedievalAxe")
    }
    
    static func nameAndDamage() -> String {
        let nameAndDamage = "\(MedievalAxe().nameWeapon)  : \(MedievalAxe().damage) Power."
        return nameAndDamage
    }
}
