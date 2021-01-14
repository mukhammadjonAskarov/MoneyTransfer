//
//  MTAddButtonCell.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 14/01/21.
//

import Foundation
import UIKit

class MTAddCardButtonCell: UITableViewCell {
    
    let addCardButton = MTAddCardButton(backgroundColor: .white, title: "Add New Card")
    static let reuserId = "addCardCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.addCardButton.setImage(UIImage(systemName: "plus"), for: .normal)
        self.addCardButton.setTitle("Add New Card", for: .normal)
        configure()
        
       // accessoryType = .disclosureIndicator
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(){
        
        contentView.addSubview(addCardButton)
        addCardButton.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            addCardButton.topAnchor.constraint(equalTo: contentView.topAnchor),
            addCardButton.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            addCardButton.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            addCardButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
    }
}
