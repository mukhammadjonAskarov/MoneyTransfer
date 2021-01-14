//
//  CardViewCell.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 13/01/21.
//

import Foundation
import UIKit

class CardViewCell: UITableViewCell {
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
   
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
        
       // accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        contentView.addSubview(cardNumberLabel)
        contentView.addSubview(cardHolderNameLabel)
        contentView.addSubview(cardExpiryDateLabel)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        //contentView.backgroundColor = .white
        
        cardNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        cardHolderNameLabel.translatesAutoresizingMaskIntoConstraints = false
        cardExpiryDateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cardNumberLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            cardNumberLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
           
            cardHolderNameLabel.topAnchor.constraint(equalTo: cardNumberLabel.bottomAnchor, constant: 10),
            cardHolderNameLabel.leadingAnchor.constraint(equalTo: cardNumberLabel.leadingAnchor),
           
            cardExpiryDateLabel.topAnchor.constraint(equalTo: cardHolderNameLabel.bottomAnchor, constant: 10),
            cardExpiryDateLabel.leadingAnchor.constraint(equalTo: cardHolderNameLabel.leadingAnchor),
            cardExpiryDateLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10),
            
        ])
    }
}
