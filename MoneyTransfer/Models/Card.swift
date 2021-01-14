//
//  Card.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 13/01/21.
//

import Foundation

class Card {
    
    var cardNumber: String
    var expiryDate: String
    var cardHolder: String
    
    
    init(cardNumber: String, expiryDate: String, cardHolder: String) {
        
        self.cardNumber = cardNumber
        self.cardHolder = cardHolder
        self.expiryDate = expiryDate
    }
}
