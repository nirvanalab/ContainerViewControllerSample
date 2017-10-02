//
//  FirstViewController.swift
//  ContainerViewController
//
//  Created by Nirvana on 9/10/17.
//  Copyright © 2017 Nirvana. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("FirstVC \(#function)")
    }

    override func viewWillAppear(_ animated: Bool) {
        print("FirstVC \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("FirstVC \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("FirstVC \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("FirstVC \(#function)")
    }

}
