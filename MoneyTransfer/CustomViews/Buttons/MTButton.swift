//
//  MTButton.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 12/01/21.
//

import UIKit

class MTButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        
        configure()
    }
    
    private func configure(){
        
        titleEdgeInsets = UIEdgeInsets(top: 1, left: (imageView?.frame.width)!, bottom: 1, right: 0)
        imageEdgeInsets = UIEdgeInsets(top: 1, left: 1, bottom: 1, right: 0 )
      
        layer.cornerRadius = 4
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
        setImage(UIImage(systemName: "chevron.right.circle"), for: .normal)
    }
    
    func set(backgroundColor: UIColor, title: String){
        
        self.backgroundColor  =  backgroundColor
        setTitle(title, for: .normal)
    }
    
}
