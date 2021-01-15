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
    lazy var qrButton            = UIButton()
    lazy var threeDotbutton      = UIButton()
    lazy var cardTypeimageview   = UIImageView()
  
    
    var model: Card! {
        didSet{
            self.cardNumberLabel.text     = model.cardNumber
            self.cardHolderNameLabel.text = model.cardHolder
            self.cardExpiryDateLabel.text = model.expiryDate
        }
    }
    
    override func configure(){
        
        qrButton.setImage(UIImage(systemName: "qrcode"), for: .normal)
        qrButton.translatesAutoresizingMaskIntoConstraints = false
        qrButton.contentHorizontalAlignment = .right
        
        threeDotbutton.setImage(UIImage(named: "three-dot"), for: .normal)
        threeDotbutton.translatesAutoresizingMaskIntoConstraints = false
        
        cardTypeimageview.image         = UIImage(named: "visa")
        cardTypeimageview.contentMode   = .scaleAspectFit
        cardTypeimageview.translatesAutoresizingMaskIntoConstraints = false
        cardTypeimageview.clipsToBounds = true

        let padding: CGFloat = 20
        contentView.addSubview(cardView)
        cardView.addSubview(cardNumberLabel)
        cardView.addSubview(cardHolderNameLabel)
        cardView.addSubview(cardExpiryDateLabel)
        cardView.addSubview(qrButton)
        cardView.addSubview(threeDotbutton)
      
        cardView.addSubview(cardTypeimageview)
        
        cardView.translatesAutoresizingMaskIntoConstraints = false
        
        cardNumberLabel.translatesAutoresizingMaskIntoConstraints = false
        cardHolderNameLabel.translatesAutoresizingMaskIntoConstraints = false
        cardExpiryDateLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: padding),
            cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -padding),
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -padding),
           
            threeDotbutton.topAnchor.constraint(equalTo: cardView.topAnchor, constant: padding),
            threeDotbutton.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: 0),
            threeDotbutton.widthAnchor.constraint(equalToConstant: 30),
            threeDotbutton.heightAnchor.constraint(equalToConstant: 30),
            
            qrButton.topAnchor.constraint(equalTo: threeDotbutton.topAnchor),
            qrButton.trailingAnchor.constraint(equalTo: threeDotbutton.leadingAnchor, constant: 0),
            qrButton.widthAnchor.constraint(equalToConstant: 30),
            qrButton.heightAnchor.constraint(equalToConstant: 30),
            
            cardTypeimageview.trailingAnchor.constraint(equalTo: threeDotbutton.trailingAnchor, constant: -10),
            cardTypeimageview.topAnchor.constraint(equalTo: threeDotbutton.bottomAnchor, constant: 5),
            cardTypeimageview.leadingAnchor.constraint(equalTo: qrButton.leadingAnchor, constant: 15),
            cardTypeimageview.heightAnchor.constraint(equalToConstant: 40),
            
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
