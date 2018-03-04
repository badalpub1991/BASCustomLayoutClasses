//
//  NewPushedVC.swift
//  BASCustomClassesDemo
//
//  Created by badal shah on 04/03/18.
//  Copyright © 2018 badal shah. All rights reserved.
//

import UIKit

class NewPushedVC: UIViewController {



}
extension NewPushedVC : NavigationHeaderDelegate {
    func didPressButton(senderTag: Int) {
        if senderTag == 0 {
            self.navigationController?.popViewController(animated: true)
        } else {
            self.navigationController?.popToRootViewController(animated: true)
        }
    }
}
