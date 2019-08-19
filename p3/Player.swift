//
//  Player.swift
//  p3
//
//  Created by Constance Masniaud on 01/07/2019.
//  Copyright © 2019 Constance Masniaud. All rights reserved.
//

import Foundation

class Player {
    //properties of player
    var playerName = ""
    var number: Int
    var fighters = [Character]()
    var characterNameChoice = ""
    var characterName = [String]()
    static var countFighters = 0

    init (number: Int) {
        self.number = number
    }
    
    //functions of player
    func enterAName(enemy: Player) {
        print("Enter Your Name Player \(self.number)")
        if let name = readLine() {
            self.playerName = name
        }
        if self.playerName.contains(" ") || self.playerName.isEmpty {
            print("Name with space are not accepted")
            enterAName(enemy: enemy)
        }
        else if self.playerName == enemy.playerName {
            print("\n you can't put the same name \n")
            enterAName(enemy: enemy)
        }

        else {
            print("\nHello \(playerName) ! I hope you are ready for the fight...\n")
        }
    }


    func teamCreation(enemy: Player) {
        print("\n\(self.playerName) choose your fighters number \(Player.countFighters) \n\n")
        Gladiator.showAllCharacters(number: 1)
        Viking.showAllCharacters(number: 2)
        Samourai.showAllCharacters(number: 3)
        Knight.showAllCharacters(number: 4)
        Military.showAllCharacters(number: 5)
        Robot.showAllCharacters(number: 6)

        if let choice = readLine() {
            switch choice {
            case "1":
                fighters.append(Gladiator(nameChoice: setChoiceCharacterName(enemy: enemy)))
            case "2":
                fighters.append(Viking(nameChoice: setChoiceCharacterName(enemy: enemy)))
            case "3":
                fighters.append(Samourai(nameChoice: setChoiceCharacterName(enemy: enemy)))
            case "4":
                fighters.append(Knight(nameChoice: setChoiceCharacterName(enemy: enemy)))
            case "5":
                fighters.append(Military(nameChoice: setChoiceCharacterName(enemy: enemy)))
            case "6":
                fighters.append(Robot(nameChoice: setChoiceCharacterName(enemy: enemy)))
            default:
                print("\n!! You have not chosen three characters to enter the ring !! \n\n!! Enter a number associated to a fighter... !!\n")
                teamCreation(enemy: enemy)
            }
        }
    }


    func setChoiceCharacterName(enemy: Player) -> String {
        print("\n Give a name to your Fighter please \n")
        repeat{
            if let data: String = readLine() {
                characterNameChoice = data
            }
            if self.characterName.contains(characterNameChoice) || enemy.characterName.contains(characterNameChoice) {
                print("an over fighter have this name sorry")
                characterNameChoice = ""
            }
            characterName.append(characterNameChoice)
        }
            while characterNameChoice == ""
        return characterNameChoice
    }

    
    func displayeTeam() {
        print("\n\n \(playerName) this is your team : \n")
        var listNumber = 1
        for fighters in fighters {
            fighters.introduceOneself(number: listNumber)
            listNumber += 1
        }
    }
}

//// To describe player' s fighters names as well as their life points left and attack points
//func fightersDescription() {
//
//    print("""
//
//        1: \(dictionnaryOfCharacters[0])  \(dictionnaryOfCharacters[0].fighterName),  \(dictionnaryOfCharacters[0].lifePoints) life points,  \(dictionnaryOfCharacters[0].hittingScore()) attack points.
//        2: \(dictionnaryOfCharacters[1])  \(dictionnaryOfCharacters[1].fighterName),  \(dictionnaryOfCharacters[1].lifePoints) life points,  \(dictionnaryOfCharacters[1].hittingScore()) attack points.
//        3: \(dictionnaryOfCharacters[2])  \(dictionnaryOfCharacters[2].fighterName),  \(dictionnaryOfCharacters[2].lifePoints) life points.  \(dictionnaryOfCharacters[2].hittingScore()) attack points.
//
//        """)
//}

//// To use when needed to choose between player' s fighters list during the fight loop
//func fightersSwitch() -> Character {
//
//    var playerChosen: Character?
//
//    while playerChosen == nil {
//        if let userChoice = readLine() {
//
//            switch userChoice {
//            case "1":
//                playerChosen = dictionnaryOfCharacters[0]
//            case "2":
//                playerChosen = dictionnaryOfCharacters[1]
//            case "3":
//                playerChosen = dictionnaryOfCharacters[2]
//            default:
//                print("\n!!! Enter a number associated to a fighter to continue !!!\n")
//            }
//
//            if let player = playerChosen, player.lifePoints <= 0 {
//                print("\n\n☠️ A DEAD FIGHTER IS A DEAD MAN ☠️\n\nChoose one still alive to continue...")
//                playerChosen = nil
//            }
//        }
//    }
//    return playerChosen!
//}
//
//// Boolean that checks if a fighter is still alive
//func haveFightersAlive() -> Bool {
//    for fighter in dictionnaryOfCharacters {
//
//        if fighter.lifePoints > 0 {
//            return true
//        }
//    }
//    return false
//}
//}

// Present all fighters available
// ?????????????????????????????

// Loop for players to select and name their fighters
// while dictionnaryOfCharacters.count < 3 {
//   print("\nInput an associated number to select a fighter:")

// if let userChoice = readLine() {
//  print("\nName your fighter:")

//   if let nameChoice = readLine() {

//  if dictionnaryOfCharacters.contains(nameChoice) {
//  print("\nName your fighter uniquely!")
//   }
//   else {
//   dictionnaryOfCharacters.append(nameChoice)
