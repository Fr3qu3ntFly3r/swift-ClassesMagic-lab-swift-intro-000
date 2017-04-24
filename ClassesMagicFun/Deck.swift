//
//  Deck.swift
//  ClassesMagicFun
//
//  Created by Michael Dippery on 7/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Deck {
    var cards: [Card] = []
    
    init() {
        cards.append(Card(suit: "♣️", rank: "Ace"))
        cards.append(Card(suit: "♣️", rank: "2"))
        cards.append(Card(suit: "♣️", rank: "3"))
        cards.append(Card(suit: "♣️", rank: "4"))
        cards.append(Card(suit: "♣️", rank: "5"))
        cards.append(Card(suit: "♣️", rank: "6"))
        cards.append(Card(suit: "♣️", rank: "7"))
        cards.append(Card(suit: "♣️", rank: "8"))
        cards.append(Card(suit: "♣️", rank: "9"))
        cards.append(Card(suit: "♣️", rank: "10"))
        cards.append(Card(suit: "♣️", rank: "J"))
        cards.append(Card(suit: "♣️", rank: "Q"))
        cards.append(Card(suit: "♣️", rank: "K"))
        
        cards.append(Card(suit: "♠️", rank: "Ace"))
        cards.append(Card(suit: "♠️", rank: "2"))
        cards.append(Card(suit: "♠️", rank: "3"))
        cards.append(Card(suit: "♠️", rank: "4"))
        cards.append(Card(suit: "♠️", rank: "5"))
        cards.append(Card(suit: "♠️", rank: "6"))
        cards.append(Card(suit: "♠️", rank: "7"))
        cards.append(Card(suit: "♠️", rank: "8"))
        cards.append(Card(suit: "♠️", rank: "9"))
        cards.append(Card(suit: "♠️", rank: "10"))
        cards.append(Card(suit: "♠️", rank: "J"))
        cards.append(Card(suit: "♠️", rank: "Q"))
        cards.append(Card(suit: "♠️", rank: "K"))
        
        cards.append(Card(suit: "♥️", rank: "Ace"))
        cards.append(Card(suit: "♥️", rank: "2"))
        cards.append(Card(suit: "♥️", rank: "3"))
        cards.append(Card(suit: "♥️", rank: "4"))
        cards.append(Card(suit: "♥️", rank: "5"))
        cards.append(Card(suit: "♥️", rank: "6"))
        cards.append(Card(suit: "♥️", rank: "7"))
        cards.append(Card(suit: "♥️", rank: "8"))
        cards.append(Card(suit: "♥️", rank: "9"))
        cards.append(Card(suit: "♥️", rank: "10"))
        cards.append(Card(suit: "♥️", rank: "J"))
        cards.append(Card(suit: "♥️", rank: "Q"))
        cards.append(Card(suit: "♥️", rank: "K"))
        
        cards.append(Card(suit: "♦️", rank: "Ace"))
        cards.append(Card(suit: "♦️", rank: "2"))
        cards.append(Card(suit: "♦️", rank: "3"))
        cards.append(Card(suit: "♦️", rank: "4"))
        cards.append(Card(suit: "♦️", rank: "5"))
        cards.append(Card(suit: "♦️", rank: "6"))
        cards.append(Card(suit: "♦️", rank: "7"))
        cards.append(Card(suit: "♦️", rank: "8"))
        cards.append(Card(suit: "♦️", rank: "9"))
        cards.append(Card(suit: "♦️", rank: "10"))
        cards.append(Card(suit: "♦️", rank: "J"))
        cards.append(Card(suit: "♦️", rank: "Q"))
        cards.append(Card(suit: "♦️", rank: "K"))
        
        shuffle()
    }
    
    func shuffle() {
        var deck: [Card] = []
        
        for _ in cards {
            deck.append(cards.remove(at: Int(arc4random_uniform(UInt32(cards.count)))))
        }
        
        cards = deck
    }
    
    func drawCard() -> Card? {
        if cards.count != 0 {
            return cards.remove(at: 0)
        } else {
            return nil
        }
    }
    
    func refillDeck() {
        cards.append(Card(suit: "♣️", rank: "Ace"))
        cards.append(Card(suit: "♣️", rank: "2"))
        cards.append(Card(suit: "♣️", rank: "3"))
        cards.append(Card(suit: "♣️", rank: "4"))
        cards.append(Card(suit: "♣️", rank: "5"))
        cards.append(Card(suit: "♣️", rank: "6"))
        cards.append(Card(suit: "♣️", rank: "7"))
        cards.append(Card(suit: "♣️", rank: "8"))
        cards.append(Card(suit: "♣️", rank: "9"))
        cards.append(Card(suit: "♣️", rank: "10"))
        cards.append(Card(suit: "♣️", rank: "J"))
        cards.append(Card(suit: "♣️", rank: "Q"))
        cards.append(Card(suit: "♣️", rank: "K"))
        
        cards.append(Card(suit: "♠️", rank: "Ace"))
        cards.append(Card(suit: "♠️", rank: "2"))
        cards.append(Card(suit: "♠️", rank: "3"))
        cards.append(Card(suit: "♠️", rank: "4"))
        cards.append(Card(suit: "♠️", rank: "5"))
        cards.append(Card(suit: "♠️", rank: "6"))
        cards.append(Card(suit: "♠️", rank: "7"))
        cards.append(Card(suit: "♠️", rank: "8"))
        cards.append(Card(suit: "♠️", rank: "9"))
        cards.append(Card(suit: "♠️", rank: "10"))
        cards.append(Card(suit: "♠️", rank: "J"))
        cards.append(Card(suit: "♠️", rank: "Q"))
        cards.append(Card(suit: "♠️", rank: "K"))
        
        cards.append(Card(suit: "♥️", rank: "Ace"))
        cards.append(Card(suit: "♥️", rank: "2"))
        cards.append(Card(suit: "♥️", rank: "3"))
        cards.append(Card(suit: "♥️", rank: "4"))
        cards.append(Card(suit: "♥️", rank: "5"))
        cards.append(Card(suit: "♥️", rank: "6"))
        cards.append(Card(suit: "♥️", rank: "7"))
        cards.append(Card(suit: "♥️", rank: "8"))
        cards.append(Card(suit: "♥️", rank: "9"))
        cards.append(Card(suit: "♥️", rank: "10"))
        cards.append(Card(suit: "♥️", rank: "J"))
        cards.append(Card(suit: "♥️", rank: "Q"))
        cards.append(Card(suit: "♥️", rank: "K"))
        
        cards.append(Card(suit: "♦️", rank: "Ace"))
        cards.append(Card(suit: "♦️", rank: "2"))
        cards.append(Card(suit: "♦️", rank: "3"))
        cards.append(Card(suit: "♦️", rank: "4"))
        cards.append(Card(suit: "♦️", rank: "5"))
        cards.append(Card(suit: "♦️", rank: "6"))
        cards.append(Card(suit: "♦️", rank: "7"))
        cards.append(Card(suit: "♦️", rank: "8"))
        cards.append(Card(suit: "♦️", rank: "9"))
        cards.append(Card(suit: "♦️", rank: "10"))
        cards.append(Card(suit: "♦️", rank: "J"))
        cards.append(Card(suit: "♦️", rank: "Q"))
        cards.append(Card(suit: "♦️", rank: "K"))
        
        shuffle()
    }
}
