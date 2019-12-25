//
//  main.swift
//  MarrPelle
//
//  Created by kasra ebrahimi on 7/18/1398 AP.
//  Copyright © 1398 AP kasra ebrahimi. All rights reserved.
//

import Foundation

var turn = true

print("hi, enter your names")
let 🅰️Name = readLine()!
var player🅰️ = Player(playerName: 🅰️Name, isOnPlayBoard: false, placeNumb: 0)
let 🅱️Name = readLine()!
var player🅱️ = Player(playerName: 🅱️Name, isOnPlayBoard: false, placeNumb: 0)

print(" >>> \(🅰️Name) vs \(🅱️Name) <<< ")
print(" >>> start now ! <<< ")


repeat {
    print("\(player🅰️.playerName) is in \(player🅰️.placeNumb) and \(player🅱️.playerName) is in \(player🅱️.placeNumb)")
    if turn {
        print("now \(player🅰️.playerName) turn")
    }
    else {
        print("now \(player🅱️.playerName) turn")
    }
    print("press <d> to 🎲 :", terminator:" ")
    let rollDice = readLine()
    if rollDice == "d" {
        let numbOnDice = Int.random(in: 1...6)
        print(">>> 🎲 : \(numbOnDice)")
        if turn {
            if player🅰️.isOnPlayBoard == false && numbOnDice == 6 {
                player🅰️.placeNumb = 1
                player🅰️.isOnPlayBoard = true
            } else {
                if player🅰️.isOnPlayBoard {
                    player🅰️.placeNumb += numbOnDice
                    if player🅰️.placeNumb >= 100 {
                        print("you win !!! \(player🅰️.playerName)")
                        break
                    }
                    if player🅰️.placeNumb != 10 && player🅰️.placeNumb % 10 == 0 {
                        player🅰️.placeNumb -= 10
                    }
                    if player🅰️.placeNumb == player🅱️.placeNumb {
                        player🅱️.placeNumb = 0
                        player🅱️.isOnPlayBoard = false
                    }
                    if numbOnDice == 6 {
                        turn = true
                    } else {
                        turn = false
                    }
                } else {
                    turn = false
                }
            }
        } else {
            if player🅱️.isOnPlayBoard == false && numbOnDice == 6 {
                player🅱️.placeNumb = 1
                player🅱️.isOnPlayBoard = true
            } else {
                if player🅱️.isOnPlayBoard {
                    player🅱️.placeNumb += numbOnDice
                    if player🅱️.placeNumb >= 100 {
                        print("you win !!! \(player🅱️.playerName)")
                        break
                    }
                    if player🅱️.placeNumb != 10 && player🅱️.placeNumb % 10 == 0 {
                        player🅱️.placeNumb -= 10
                    }
                    if player🅱️.placeNumb == player🅰️.placeNumb {
                        player🅰️.placeNumb = 0
                        player🅰️.isOnPlayBoard = false
                    }
                    if numbOnDice == 6 {
                        turn = false
                    } else {
                        turn = true
                    }
                } else {
                    turn = true
                }
            }
        }
    }
}
while player🅰️.placeNumb < 100 || player🅱️.placeNumb < 100










