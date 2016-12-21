//
//  HomeViewController.swift
//  BANGBANG
//
//  Created by Zhen Zhang on 2016-11-20.
//  Copyright © 2016 Zhang Zhen. All rights reserved.
//

import UIKit

@objc

protocol HomeViewControllerDelegate {
    
    @objc optional func toggleLeftPanel()
    @objc optional func collapseSidePanel()
    
}

class HomeViewController: UIViewController {
    
    var delegate: HomeViewController?
    
    @IBAction func accountTapped(_sender: AnyObject){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
