//
//  GFTitleLabel.swift
//  GFFollowers1
//
//  Created by Mukhammadjon Askarov on 7/23/20.
//  Copyright © 2020 Mukhammadjon Askarov. All rights reserved.
//

import UIKit

class MTTitleLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
   
     init(textAlignment: NSTextAlignment, fontSize: CGFloat) {
        super.init(frame: .zero)
        self.textAlignment   = textAlignment
        self.font            = UIFont.systemFont(ofSize: fontSize, weight: .bold )
        configure()
    }
    
    private func configure(){
        textColor                   = .label
        adjustsFontSizeToFitWidth   = true
        minimumScaleFactor          = 0.90
        lineBreakMode               = .byTruncatingTail
        translatesAutoresizingMaskIntoConstraints = false
    }
}
