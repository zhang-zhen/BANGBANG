//
//  ContainerViewController.swift
//  BANGBANG
//
//  Created by Zhen Zhang on 2016-12-05.
//  Copyright © 2016 Zhang Zhen. All rights reserved.
//

import UIKit
import QuartzCore

enum SlideOutState {
    case LeftMenuCollapsed
    case LeftMenuExpanded
}

class ContainerViewController: UIViewController {
    
    var centerNavigationController: UINavigationController!
    var centerViewController: HomeViewController!
    
    var currentState: SlideOutState = .LeftMenuCollapsed {
        didSet {
            
        }
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
