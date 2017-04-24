//
//  Dealer.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/30/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Dealer {
    
    let deck = Deck()
    
    let player: Player
    
    let house: House
    
    var winner: Player? {
        if player.isBlackJack || house.isBusted {
            return player
        } else if player.isBusted || house.isBlackJack {
            return house
        } else {
            return nil
        }
    }
    
    init() {
        player = Player("Player")
        house = House()
    }
    
    func dealCard(_ player: Player) {
        if deck.cards.isEmpty {
            deck.refillDeck()
        } else {
            player.hand.append(deck.drawCard()!)
        }
        
    }
    
    func deal() {
        
        for _ in 0 ... 1 {
            dealCard(player)
            dealCard(house)
        }
        
        //lehet ide be kell rakni a winner check-et
    }
    
    func turn(_ player: Player) {
        while player.willHit(10) {
            dealCard(player)
        }
    }
    
    func award() {
        if let winner = winner {
            switch winner.name {
            case "Player":
                player.win(10)
                house.lose(10)
            case "House":
                house.win(10)
                player.lose(10)
            default:
                return
            }
        }
        
    }
    
    
}
