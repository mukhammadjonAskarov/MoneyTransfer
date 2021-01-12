//
//  GFSecondaryTitleLabel.swift
//  GFFollowers1
//
//  Created by Mukhammadjon Askarov on 12/9/20.
//  Copyright © 2020 Mukhammadjon Askarov. All rights reserved.
//

import UIKit

class MTSecondaryTitleLabel: UILabel {
  
    override init(frame: CGRect) {
         super.init(frame: frame)
         configure()
     }
     
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
    
      init(fontSize: CGFloat) {
         super.init(frame: .zero)
        font      = UIFont.systemFont(ofSize: fontSize, weight: .medium)
         configure()
     }
     
     private func configure(){
         textColor                   = .secondaryLabel
         adjustsFontSizeToFitWidth   = true
         minimumScaleFactor          = 0.90
         lineBreakMode               = .byTruncatingTail
         translatesAutoresizingMaskIntoConstraints = false
     }
}
