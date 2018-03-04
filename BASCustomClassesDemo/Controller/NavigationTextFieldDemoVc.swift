//
//  Navigation+TextFieldDemoVc.swift
//  BASCustomClassesDemo
//
//  Created by badal shah on 20/02/18.
//  Copyright © 2018 badal shah. All rights reserved.
//

import UIKit

class NavigationTextFieldDemoVc: UIViewController , NavigationHeaderDelegate{

    //Outlets
    @IBOutlet weak var placeHolder1: BASCustomTextField!
    @IBOutlet weak var placeHolder2: BASCustomTextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func submitBtnPressed(_ sender: Any) {
        placeHolder1.setJitterAnimation()
        placeHolder2.setJitterAnimation()
    }
    // Navigation Delegate
    func didPressButton(senderTag:Int) {
        if senderTag == 0 {
            self.navigationController?.popViewController(animated: true)
        } else {
            let newPushedVC = storyboard?.instantiateViewController(withIdentifier: "NewPushedVC") as! NewPushedVC
            self.navigationController?.pushViewController(newPushedVC, animated: true)
        }
    }
}
