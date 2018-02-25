//
//  BASCustomUIView.swift
//  BASCustomClassesDemo
//
//  Created by badal shah on 25/02/18.
//  Copyright © 2018 badal shah. All rights reserved.
//

import UIKit

@IBDesignable
class BASCustomUIView: UIView {
    
    
    // MARK: - Gradient
    
    @IBInspectable var firstColor: UIColor = UIColor.white {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var secondColor: UIColor = UIColor.white {
        didSet {
            updateView()
        }
    }
    
    @IBInspectable var horizontalGradient: Bool = false {
        didSet {
            updateView()
        }
    }
    
    override class var layerClass: AnyClass {
        get {
            return CAGradientLayer.self
        }
    }
    
    func updateView() {
        let layer = self.layer as! CAGradientLayer
        layer.colors = [ firstColor.cgColor, secondColor.cgColor ]
        
        if (horizontalGradient) {
            layer.startPoint = CGPoint(x: 0.0, y: 0.5)
            layer.endPoint = CGPoint(x: 1.0, y: 0.5)
        } else {
            layer.startPoint = CGPoint(x: 0, y: 0)
            layer.endPoint = CGPoint(x: 0, y: 1)
        }
    }

    //MARK:- SetUp UIView Border
    
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
    
    @IBInspectable var roundUIView: Bool = false {
        didSet {
            if roundUIView == true {
                self.layer.cornerRadius = self.layer.frame.size.height/2
            }
        }
    }
    
    
    
    
    //MARK:- SetUp UIView Shadow
    
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
