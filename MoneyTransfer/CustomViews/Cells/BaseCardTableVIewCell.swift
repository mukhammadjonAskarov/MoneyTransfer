//
//  BaseCardTableVIewCell.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 14/01/21.
//

import UIKit

class BaseCardTableViewCell: UITableViewCell {
    
    lazy var cardView: CardView = {
        let view = CardView()
        view.backgroundColor = .white
        return view
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        backgroundColor = .clear
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Public
    func configure() {
        
    }
    
}
