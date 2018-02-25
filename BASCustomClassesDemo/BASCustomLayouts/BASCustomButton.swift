//
//  BASCustomButton.swift
//  BASCustomClassesDemo
//
//  Created by badal shah on 20/02/18.
//  Copyright © 2018 badal shah. All rights reserved.
//

import UIKit
@IBDesignable
class BASCustomButton: UIButton {

    //MARK:- SetUp Button Border
    
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
    
    @IBInspectable var roundButton: Bool = false {
        didSet {
            if roundButton == true {
            self.layer.cornerRadius = self.layer.frame.size.height/2
            }
        }
    }
    
    
    
    
    //MARK:- SetUp Button Shadow
    
    @IBInspectable var shadowOpacity: CGFloat = 0.0 {
        didSet {
            self.layer.shadowOpacity = Float(shadowOpacity)
        }
    }
    
    @IBInspectable var shadowColor: UIColor? {
        didSet {
            self.layer.shadowColor = shadowColor?.cgColor
        }
    }
    
    @IBInspectable var shadowRadious: CGFloat = 0.0 {
        didSet {
            self.layer.shadowRadius = shadowRadious
        }
    }
    
    @IBInspectable var shadowOffSet:CGSize = CGSize(width: 0, height: 0) {
        didSet {
            self.layer.shadowOffset = CGSize(width: shadowOffSet.width, height: shadowOffSet.height)
        }
    }

}
