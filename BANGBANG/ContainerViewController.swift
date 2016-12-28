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
    case leftMenuCollapsed
    case leftMenuExpanded
}

class ContainerViewController: UIViewController{
    
    var homeNavigationController: UINavigationController!
    var homeViewController: HomeViewController!
    
    var currentState: SlideOutState = .leftMenuCollapsed {
        didSet {
            
        }
    }
    
    var leftSideMenuViewController: LeftSideMenuViewController?
    
    let homePanelExpandedOffset: CGFloat = 60
    
    override func viewDidLoad() {
        super.viewDidLoad()

        homeViewController = UIStoryboard.homeViewController()
        homeViewController.delegate = self
        
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

extension ContainerViewController: HomeViewControllerDelegate{
    
    func toggleLeftPanel() {
    
        let notAlreadyExpanded = (currentState != .leftMenuExpanded)
        
        if notAlreadyExpanded {
            addleftSideMenuViewController()
        }
        animateLeftPanel(notAlreadyExpanded)
    }
    
    func addleftSideMenuViewController() {
        
        if (leftSideMenuViewController == nil) {
            leftSideMenuViewController = UIStoryboard.leftSideMenuViewController()
        }
        
        addChildSidePanelController(leftSideMenuViewController!)
        
        
    }
    
    func addChildSidePanelController(_ leftSideMenuViewController: LeftSideMenuViewController) {
        
        view.insertSubview(leftSideMenuViewController.view, at: 0)
        addChildViewController(leftSideMenuViewController)
        leftSideMenuViewController.didMove(toParentViewController: self)
        
    }
    
    func animateLeftPanel(_ shouldExpand: Bool) {
        if (shouldExpand) {
            currentState = .leftMenuExpanded
            animateCenterPanelXPosition(homeNavigationController.view.frame.width - homePanelExpandedOffset)
        }else{
            animateCenterPanelXPosition(0){ finished in
                
                self.currentState = .leftMenuCollapsed
                
                self.leftSideMenuViewController!.view.removeFromSuperview()
                self.leftSideMenuViewController = nil;
            
            }
        }
    }
    
    func animateCenterPanelXPosition(_ targetPosition: CGFloat, completion:((Bool) -> Void)! = nil) {
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: UIViewAnimationOptions(), animations: { 
            self.homeNavigationController.view.frame.origin.x = targetPosition
        }, completion: completion)
        
    }
    
}

private extension UIStoryboard {
    
    class func mainStoryboard() -> UIStoryboard {
        return UIStoryboard(name:"Main", bundle: Bundle.main)
    }
    
    class func leftSideMenuViewController() -> LeftSideMenuViewController? {
        return mainStoryboard().instantiateViewController(withIdentifier:"LeftSideMenuViewController") as? LeftSideMenuViewController
    }
    
    class func homeViewController() -> HomeViewController? {
        return mainStoryboard().instantiateViewController(withIdentifier:"HomeViewController") as? HomeViewController
    }
}
