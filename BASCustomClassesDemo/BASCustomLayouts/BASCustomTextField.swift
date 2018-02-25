//
//  BASCustomTextField.swift
//  breakpoint
//
//  Created by badal shah on 08/02/18.
//  Copyright © 2018 badal shah. All rights reserved.
//

import UIKit
@IBDesignable
class BASCustomTextField: UITextField {

    //MARK:- Chnage TextField PlaceHolder Color and Cursor Color
    @IBInspectable var placeholderColor: UIColor? {
        didSet {
            let placeHolder = NSAttributedString(string: self.placeholder!, attributes: [NSAttributedStringKey.foregroundColor:placeholderColor!])
            self.attributedPlaceholder = placeHolder
        }
    }
    
  
    @IBInspectable var cursorColor: UIColor? {
        didSet {
            self.tintColor = cursorColor
        }
    }
    
    //MARK:- SetUp TextFiled Border

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
    
   
    
    //MARK:- SetUp TextFiled Shadow

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
    
  

    //MARK:- Set Left and Right Image UITextField

    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateLayout()
        }
    }
    
    @IBInspectable var leftPadding: CGFloat = 0 {
        didSet {
            updateLayout()
        }
    }
    
    @IBInspectable var rightImage: UIImage? {
        didSet {
            updateLayout()
        }
    }
    
    @IBInspectable var rightPadding: CGFloat = 0 {
        didSet {
            updateLayout()
        }
    }
    
    private var _isRightViewVisible: Bool = true
    var isRightViewVisible: Bool {
        get {
            return _isRightViewVisible
        }
        set {
            _isRightViewVisible = newValue
           updateLayout()
        }
    }
    
    func updateLayout() {
        setLeftImage()
        setRightImage()
    }
   
    
    func setLeftImage() {
        leftViewMode = UITextFieldViewMode.always
        var view: UIView
        
        if let image = leftImage {
            let imageView = UIImageView(frame: CGRect(x: leftPadding, y: 0, width: 20, height: 20))
            imageView.image = image
            // Note: In order for your image to use the tint color, you have to select the image in the Assets.xcassets and change the "Render As" property to "Template Image".
            imageView.tintColor = tintColor
            
            var width = imageView.frame.width + leftPadding
            
            if borderStyle == UITextBorderStyle.none || borderStyle == UITextBorderStyle.line {
                width += 5
            }
            
            view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20))
            view.addSubview(imageView)
        } else {
            view = UIView(frame: CGRect(x: 0, y: 0, width: leftPadding, height: 20))
        }
        
        leftView = view
    }
    
    func setRightImage() {
        rightViewMode = UITextFieldViewMode.always
        
        var view: UIView
        
        if let image = rightImage, isRightViewVisible {
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            imageView.image = image
            // Note: In order for your image to use the tint color, you have to select the image in the Assets.xcassets and change the "Render As" property to "Template Image".
            imageView.tintColor = tintColor
            
            var width = imageView.frame.width + rightPadding
            
            if borderStyle == UITextBorderStyle.none || borderStyle == UITextBorderStyle.line {
                width += 5
            }
            
            view = UIView(frame: CGRect(x: 0, y: 0, width: width, height: 20))
            view.addSubview(imageView)
            
        } else {
            view = UIView(frame: CGRect(x: 0, y: 0, width: rightPadding, height: 20))
        }
        
        rightView = view
    }
    
    
    //MARK:- Jitter Animation for Wrong UserName and Password
    @IBInspectable var jitterAnimDuratuin: CFTimeInterval = 0.05 {
        didSet {
            setJitterAnimation()
        }
    }
    
    func setJitterAnimation() {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = jitterAnimDuratuin
        animation.repeatCount = 5
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint:CGPoint.init(x: self.center.x - 5.0, y: self.center.y))
        animation.toValue = NSValue(cgPoint:CGPoint.init(x: self.center.x + 5.0, y: self.center.y))
        layer.add(animation, forKey: "position")
    }
   

}
