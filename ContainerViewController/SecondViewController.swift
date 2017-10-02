//
//  SecondViewController.swift
//  ContainerViewController
//
//  Created by Nirvana on 9/10/17.
//  Copyright © 2017 Nirvana. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("SecondVC \(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("SecondVC \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("SecondVC \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("SecondVC \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("SecondVC \(#function)")
    }

}
