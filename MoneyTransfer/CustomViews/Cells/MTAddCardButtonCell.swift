//
//  MTAddButtonCell.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 14/01/21.
//

import Foundation
import UIKit

class MTAddCardButtonCell: BaseCardTableViewCell {
    
    let addCardButton = MTAddCardButton(backgroundColor: .white, title: "Add New Card")
    static let reuserId = "addCardCell"
    
    override func configure(){
        self.addCardButton.setImage(UIImage(systemName: "plus"), for: .normal)
        self.addCardButton.setTitle("Add New Card", for: .normal)
        addCardButton.backgroundColor = .blue
        
        contentView.addSubview(cardView)
        cardView.addSubview(addCardButton)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        addCardButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor),
            cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            
            addCardButton.topAnchor.constraint(equalTo: cardView.topAnchor),
            addCardButton.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
            addCardButton.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
            addCardButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
