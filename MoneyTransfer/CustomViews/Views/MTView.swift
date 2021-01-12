//
//  MTView.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 12/01/21.
//

import Foundation
import UIKit


class MTView: UIStackView {
  
    
    let view = UIStackView()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configure()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func configure(){
    
        
        
        view.backgroundColor = UIColor(red: 129.0 / 255.0, green: 199.0 / 255.0, blue: 240.0 / 255.0, alpha: 1.0)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}
