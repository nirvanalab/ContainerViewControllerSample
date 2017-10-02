//
//  ViewController.swift
//  ContainerViewController
//
//  Created by Nirvana on 9/10/17.
//  Copyright © 2017 Nirvana. All rights reserved.
//

import UIKit

/// View Containment reference: https://developer.apple.com/library/content/featuredarticles/ViewControllerPGforiPhoneOS/ImplementingaContainerViewController.html

class ViewController: UIViewController {
    
    var firstVC:UIViewController?
    var secondVC:UIViewController?
    
    @IBOutlet weak var containerView: UIView!
    
    private var activeVC:UIViewController? {
        didSet{
            removeInactiveVC(inactiveVC: oldValue)
            updateActiveVC()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        firstVC = FirstViewController()
        secondVC = SecondViewController()
    }
    
    func removeInactiveVC(inactiveVC:UIViewController? ) {
        //Step 1: Call the child’s willMoveToParentViewController: method with the value nil.
        inactiveVC?.willMove(toParentViewController: nil)
        //Step 2: Remove the child’s root view from your container’s view hierarchy. ( after removing any constraints)
        inactiveVC?.view.removeFromSuperview()
        //Step 3: Call the child’s removeFromParentViewController method to finalize the end of the parent-child relationship.
        inactiveVC?.removeFromParentViewController()
        
    }
    
    func updateActiveVC() {
        //Adding child view controller
        if let activeViewController = activeVC {
            //Step 1: Call the addChildViewController: method of your container view controller.
            addChildViewController(activeViewController)
            //Step 2: Add the child’s root view to your container’s view hierarchy.
            containerView.addSubview(activeViewController.view)
            //Step 3: Add any constraints for managing the size and position of the child’s root view.
            activeViewController.view.frame = containerView.bounds
            //Step 4: Call the didMoveToParentViewController: method of the child view controller.
            activeViewController.didMove(toParentViewController: self)
            
        }
    }
    
    @IBAction func firstVCTapped(_ sender: UIButton) {
        self.activeVC = firstVC
    }
    
    @IBAction func secondVCTapped(_ sender: UIButton) {
        self.activeVC = secondVC
    }
}

