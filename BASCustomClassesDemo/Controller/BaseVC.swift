//
//  ViewController.swift
//  BASCustomClassesDemo
//
//  Created by badal shah on 13/02/18.
//  Copyright © 2018 badal shah. All rights reserved.
//

import UIKit


class BaseVC: UIViewController{
    //Outlets
    @IBOutlet weak var tableView: UITableView!
    
    //Variables
    let staticArry = ["BASCustom NavigationHeaderView"]
    
}
extension BaseVC: UITableViewDelegate , UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return staticArry.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "BaseVCCell", for: indexPath) as? BaseVCCell else {return UITableViewCell()}
        cell.configureCell(titleLabel: staticArry[indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("didselect clicked")
        performSegue(withIdentifier: NAVIGATION_TEXTFIELD_SEGUE, sender: nil)
    }
}






