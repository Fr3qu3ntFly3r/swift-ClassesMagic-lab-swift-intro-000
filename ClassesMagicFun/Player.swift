//
//  Player.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Player {
    let name: String
    
    
    var wallet: UInt = 0
    var hand: [Card] = []
    
    var handSize: Int {
        return hand.count
    }
    
    var handValue: UInt {
        var value: UInt = 0
        
        for card in hand.reversed(){
            if card.rank == .Ace && value < 11 {
                value += 11
            } else {
                value += card.value
            }
        }
        return value
    }
    
    var isBlackJack: Bool {
        return handValue == 21
    }
    
    var isBusted: Bool {
        return handValue > 21
    }
    
    init(_ name: String){
        self.name = name
        wallet = 100
    }
    
    func dealCard(_ card: Card) {
        hand.append(card)
    }
    
    func canPlaceBet(_ amount: UInt) -> Bool {
        return amount <= wallet
    }
    
    func willHit(_ amount: UInt) -> Bool {
        
        return canPlaceBet(amount) &&  !isBlackJack
    }
    
    func win(_ amount: UInt) {
        wallet += amount
    }
    
    func lose(_ amount: UInt) {
        wallet -= amount
    }
    
}
