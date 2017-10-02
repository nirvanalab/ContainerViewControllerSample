//
//  MammalViewController.swift
//  ContainerViewController
//
//  Created by Nirvana on 9/10/17.
//  Copyright © 2017 Nirvana. All rights reserved.
//

import UIKit

class MammalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func whoAmIBtnPressed(_ sender: Any) {
        let alertC = UIAlertController.init(title: "Mammal", message: "I am Mammal!!", preferredStyle: .alert)
        let okAction = UIAlertAction.init(title: "Ok", style: .cancel, handler: nil)
        alertC.addAction(okAction)
        self.present(alertC, animated: true, completion: nil)
    }

}
