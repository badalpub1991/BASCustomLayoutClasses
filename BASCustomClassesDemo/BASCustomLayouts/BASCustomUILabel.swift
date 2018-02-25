//
//  BASCustomUILabel.swift
//  BASCustomClassesDemo
//
//  Created by badal shah on 25/02/18.
//  Copyright © 2018 badal shah. All rights reserved.
//

import UIKit
@IBDesignable
class BASCustomUILabel: UILabel {

    //MARK:- SetUp UILabel Border
    
    @IBInspectable public var borderWidth: CGFloat = 0.0 {
        didSet {
            self.layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        didSet {
            self.layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var cornorRadious: CGFloat = 0.0 {
        didSet {
            self.layer.cornerRadius = cornorRadious
        }
    }
    
    @IBInspectable var roundLabel: Bool = false {
        didSet {
            if roundLabel == true {
                self.layer.cornerRadius = self.layer.frame.size.height/2
            }
        }
    }
    
    //MARK:- SetUp UILabel Rotation
    @IBInspectable var rotationAngle: CGFloat = 0 {
        didSet {
            self.transform = CGAffineTransform(rotationAngle: rotationAngle * .pi / 180)
        }
    }
    
    
    
    
   
    
  
  

}
