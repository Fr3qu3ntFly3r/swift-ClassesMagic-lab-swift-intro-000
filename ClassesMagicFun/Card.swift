//
//  Card.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

enum Suit: String {
    case Diamonds = "♦️"
    case Spades = "♠️"
    case Hearts = "♥️"
    case Clubs = "♣️"
    
}

enum Rank: String {
    case Ace = "A"
    case Two = "2"
    case Three = "3"
    case Four = "4"
    case Five = "5"
    case Six = "6"
    case Seven = "7"
    case Eight = "8"
    case Nine = "9"
    case Ten = "10"
    case Jack = "J"
    case Queen = "Q"
    case King = "K"
    
}

class Card {
    var suit: Suit
    var rank: Rank
    
    var label: String {
    return "\(rank)\(suit)"
    }
    
    var value: UInt {
        var value: UInt = 0
        
        switch rank.hashValue {
        case 0:
            value = 1
        case 10 ... 12:
            value = 10
        default:
            value = UInt(rank.hashValue) + 1
        }
        
        
        return value
    }
    
    init(suit: String, rank: String) {
        self.suit = Suit(rawValue: suit)!
        self.rank = Rank(rawValue: rank)!
    }
}


