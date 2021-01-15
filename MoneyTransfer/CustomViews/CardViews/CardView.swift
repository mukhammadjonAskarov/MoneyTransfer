//
//  CardView.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 13/01/21.
//

import UIKit

class CardView: UIView {
    
    @IBInspectable var cornerRadius: CGFloat = 15 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowOffsetWidth: CGFloat = 1.0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowOffsetHeight: CGFloat = 2.0 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowColor: UIColor? = UIColor.darkGray {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowOpacity: Float = 0.9 {
        didSet {
            setNeedsLayout()
        }
    }
    
    @IBInspectable var shadowBlur: CGFloat = 4 {
        didSet {
            setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        
        layer.shadowColor = shadowColor?.cgColor
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight);
        layer.shadowOpacity = shadowOpacity
        layer.shadowRadius = shadowBlur
        layer.shadowPath = shadowPath.cgPath
    }
}
