//
//  NavigationHeaderView.swift
//  Haloul-Swift
//
//  Created by badal shah on 01/02/18.
//  Copyright © 2018 badal shah. All rights reserved.
//

import UIKit


@objc protocol NavigationHeaderDelegate: class {
    func didPressButton(senderTag:Int)
}
@IBDesignable
class NavigationHeaderView: UIView {

    //Outlets
    @IBOutlet weak var btnBack: UIButton!
    @IBOutlet weak var lblTitle: UILabel!
    //Variables
    var view: UIView!
  @IBOutlet weak var Navigationdelegate:NavigationHeaderDelegate?


    @IBInspectable var navigationTitle: String? {
        get {
            return lblTitle.text
        }
        set(navigationTitle) {
            lblTitle.text = navigationTitle
        }
    }
    
    @IBInspectable var TitleColor: UIColor? {
        didSet {
            lblTitle.textColor = TitleColor
        }
       
    }
    
    override init(frame: CGRect  ) {
        // 1. setup any properties here
        
        // 2. call super.init(frame:)
        super.init(frame: frame)
        
        // 3. Setup view from .xib file
        xibSetup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // 1. setup any properties here
        
        // 2. call super.init(coder:)
        super.init(coder: aDecoder)
        
        // 3. Setup view from .xib file
        xibSetup()
        //        self.view = loadViewFromNib() as! CustomView
    }
    
    func xibSetup() {
        view = loadViewFromNib()

        // use bounds not frame or it'll be offset
        view.frame = bounds

        // Make the view stretch with containing view
        view.autoresizingMask = [UIViewAutoresizing.flexibleWidth, UIViewAutoresizing.flexibleHeight]

        // Adding custom subview on top of our view (over any custom drawing > see note below)
        addSubview(view)
    }

    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of:self))
        let nib = UINib(nibName: "NavigationHeaderView", bundle: bundle)

        // Assumes UIView is top level and only object in CustomView.xib file
        let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        return view
    }

  
    @IBAction func NavigationButtonWasPressed(button: UIButton) {
        self.Navigationdelegate?.didPressButton(senderTag: button.tag)
    }
    
    

}
