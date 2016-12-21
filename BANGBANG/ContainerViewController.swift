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
    
    var homeNavigationController: UINavigationController!
    var homeViewController: HomeViewController!
    
    var currentState: SlideOutState = .LeftMenuCollapsed {
        didSet {
            
        }
    }
    
    var accountSideMenuViewController: AccountSideMenuViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        homeViewController = UIStoryboard.homeViewController();
        
        homeNavigationController = UINavigationController(rootViewController: homeViewController)
        view.addSubview(homeNavigationController.view)
        addChildViewController(homeNavigationController)
        
        homeViewController.didMove(toParentViewController: self);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

private extension UIStoryboard {
    
    class func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name:"Main", bundle: Bundle.main)
    }
    
    class func accountSideMenuViewController() -> AccountSideMenuViewController? {
        return mainStoryboard().instantiateViewController(withIdentifier:"AccountSideMenuViewController") as? AccountSideMenuViewController
    }
    
    class func homeViewController() -> HomeViewController? {
        return mainStoryboard().instantiateViewController(withIdentifier:"HomeViewController") as? HomeViewController
    }
}
