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
    let padding: CGFloat = 20
    override func configure(){
        
        self.addCardButton.setImage(UIImage(systemName: "plus"), for: .normal)
        self.addCardButton.setTitle("Add New Card", for: .normal)
        addCardButton.backgroundColor = .clear
        addCardButton.setTitleColor(.systemBlue, for: .normal)
        
        addCardButton.titleEdgeInsets = UIEdgeInsets(top: 0, left: (imageView?.frame.width)!, bottom: 0, right: 0)
        addCardButton.imageEdgeInsets = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 0 )
        
        contentView.addSubview(cardView)
        cardView.addSubview(addCardButton)
        cardView.translatesAutoresizingMaskIntoConstraints = false
        addCardButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
            cardView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: padding),
            cardView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,constant: -padding),
            cardView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -padding),
            
            addCardButton.topAnchor.constraint(equalTo: cardView.topAnchor),
            addCardButton.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
            addCardButton.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
            addCardButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}
