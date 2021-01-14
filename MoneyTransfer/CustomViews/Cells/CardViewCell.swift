//
//  CardViewCell.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 13/01/21.
//

import Foundation
import UIKit

class CardViewCell: BaseCardTableViewCell {
    static let reuseId = "card"
    
    lazy var cardHolderNameLabel = MTTitleLabel(textAlignment: .right, fontSize: 12)
    lazy var cardExpiryDateLabel = MTSecondaryTitleLabel(fontSize: 12)
    lazy var cardNumberLabel     = MTSecondaryTitleLabel(fontSize: 12)
    
    var model: Card! {
        didSet{
            self.cardNumberLabel.text = model.cardNumber
            self.cardHolderNameLabel.text = model.cardHolder
            self.cardExpiryDateLabel.text = model.expiryDate
        }
    }
    
    override func configure(){
        
        contentView.addSubview(cardView)
        cardView.addSubview(cardNumberLabel)
        cardView.addSubview(cardHolderNameLabel)
        cardView.addSubview(cardExpiryDateLabel)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        
        cardNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        cardHolderNameLabel.translatesAutoresizingMaskIntoConstraints = false
        cardExpiryDateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor),
            cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            cardNumberLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 10),
            cardNumberLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 10),
            
            cardHolderNameLabel.topAnchor.constraint(equalTo: cardNumberLabel.bottomAnchor, constant: 10),
            cardHolderNameLabel.leadingAnchor.constraint(equalTo: cardNumberLabel.leadingAnchor),
            
            cardExpiryDateLabel.topAnchor.constraint(equalTo: cardHolderNameLabel.bottomAnchor, constant: 10),
            cardExpiryDateLabel.leadingAnchor.constraint(equalTo: cardHolderNameLabel.leadingAnchor),
            cardExpiryDateLabel.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -20),
            
        ])
    }
}
