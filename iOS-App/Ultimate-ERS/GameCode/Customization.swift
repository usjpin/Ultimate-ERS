//
//  Customization.swift
//  Ultimate-ERS
//
//  Created by kudoichika on 5/20/20.
//  Copyright © 2020 kudoichika. All rights reserved.
//


import Foundation

var topBottomSlap : Bool = true
var pairSlap : Bool = true
var sandwichSlap : Bool = true
var marriageSlap : Bool = true
var divorceSlap : Bool = true
var additionSlap : Bool = true
var pythSlap : Bool = true
var stairSlap : Bool = true

var computerDifficulty : Int = 5
var manualObligation : Bool = true
var numPlayers : Int = 2
var labelHint : Bool = true

var numGames : Int = 0
var win2 : Int = 0
var win3 : Int = 0
var win4 : Int = 0

func createUserDefaults() {
    if (UserDefaults.standard.object(forKey : "TBSlap") == nil) {
        UserDefaults.standard.set(true, forKey: "TBSlap")
    }
    if (UserDefaults.standard.object(forKey : "PRSlap") == nil) {
        UserDefaults.standard.set(true, forKey: "PRSlap")
    }
    if (UserDefaults.standard.object(forKey : "SWSlap") == nil) {
        UserDefaults.standard.set(true, forKey: "SWSlap")
    }
    if (UserDefaults.standard.object(forKey : "MASlap") == nil) {
        UserDefaults.standard.set(true, forKey: "MASlap")
    }
    if (UserDefaults.standard.object(forKey : "DVSlap") == nil) {
        UserDefaults.standard.set(true, forKey: "DVSlap")
    }
    if (UserDefaults.standard.object(forKey : "ADSlap") == nil) {
        UserDefaults.standard.set(true, forKey: "ADSlap")
    }
    if (UserDefaults.standard.object(forKey : "PYSlap") == nil) {
        UserDefaults.standard.set(true, forKey: "PYSlap")
    }
    if (UserDefaults.standard.object(forKey : "SCSlap") == nil) {
        UserDefaults.standard.set(true, forKey: "SCSlap")
    }
    if (UserDefaults.standard.object(forKey : "CompDiff") == nil) {
        UserDefaults.standard.set(5, forKey: "CompDiff")
    }
    if (UserDefaults.standard.object(forKey : "ManObg") == nil) {
        UserDefaults.standard.set(true, forKey: "ManObg")
    }
    if (UserDefaults.standard.object(forKey : "NumComp") == nil) {
        UserDefaults.standard.set(2, forKey: "NumComp")
    }
    if (UserDefaults.standard.object(forKey : "LabHint") == nil) {
        UserDefaults.standard.set(true, forKey: "LabHint")
    }
    if(UserDefaults.standard.object(forKey : "NumGames") == nil) {
        UserDefaults.standard.set(0, forKey: "NumGames")
    }
    if(UserDefaults.standard.object(forKey : "Win2") == nil) {
        UserDefaults.standard.set(0, forKey: "Win2")
    }
    if(UserDefaults.standard.object(forKey : "Win3") == nil) {
        UserDefaults.standard.set(0, forKey: "Win3")
    }
    if(UserDefaults.standard.object(forKey : "Win4") == nil) {
        UserDefaults.standard.set(0, forKey: "Win4")
    }
}

func initUserDefaults() {
    topBottomSlap = UserDefaults.standard.bool(forKey: "TBSlap")
    pairSlap = UserDefaults.standard.bool(forKey: "PRSlap")
    sandwichSlap = UserDefaults.standard.bool(forKey: "SWSlap")
    marriageSlap = UserDefaults.standard.bool(forKey: "MASlap")
    divorceSlap = UserDefaults.standard.bool(forKey: "DVSlap")
    additionSlap = UserDefaults.standard.bool(forKey: "ADSlap")
    pythSlap = UserDefaults.standard.bool(forKey: "PYSlap")
    stairSlap = UserDefaults.standard.bool(forKey: "SCSlap")
    computerDifficulty = UserDefaults.standard.integer(forKey: "CompDiff")
    manualObligation = UserDefaults.standard.bool(forKey: "ManObg")
    numPlayers = UserDefaults.standard.integer(forKey : "NumComp")
    labelHint = UserDefaults.standard.bool(forKey : "LabHint")
    numGames = UserDefaults.standard.integer(forKey : "NumGames")
    win2 = UserDefaults.standard.integer(forKey : "Win2")
    win3 = UserDefaults.standard.integer(forKey : "Win3")
    win4 = UserDefaults.standard.integer(forKey: "Win4")
}

func saveUserDefaults() {
    UserDefaults.standard.set(topBottomSlap, forKey: "TBSlap")
    UserDefaults.standard.set(pairSlap, forKey: "PRSlap")
    UserDefaults.standard.set(sandwichSlap, forKey: "SWSlap")
    UserDefaults.standard.set(marriageSlap, forKey: "MASlap")
    UserDefaults.standard.set(divorceSlap, forKey: "DVSlap")
    UserDefaults.standard.set(additionSlap, forKey: "ADSlap")
    UserDefaults.standard.set(pythSlap, forKey: "PYSlap")
    UserDefaults.standard.set(stairSlap, forKey: "SCSlap")
    UserDefaults.standard.set(computerDifficulty, forKey: "CompDiff")
    UserDefaults.standard.set(manualObligation, forKey: "ManObg")
    UserDefaults.standard.set(numPlayers, forKey : "NumComp")
    UserDefaults.standard.set(labelHint, forKey: "LabHint")
}

func saveStats() {
    UserDefaults.standard.set(numGames, forKey : "NumGames")
    UserDefaults.standard.set(win2, forKey : "Win2")
    UserDefaults.standard.set(win3, forKey : "Win3")
    UserDefaults.standard.set(win4, forKey : "Win4")
}

