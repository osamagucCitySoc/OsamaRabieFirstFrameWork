//
//  ViewController.swift
//  ExampleOsamaRabieFirstFrameWork
//
//  Created by Osama Rabie on 29/12/2019.
//  Copyright © 2019 Osama Rabie. All rights reserved.
//

import UIKit
import OsamaRabieFirstFrameWork

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(RandomGenerator.string())
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let dst:UIViewController = LoginService.StartLogin { [weak self] (email, password) in
            print(email ?? "ERROR");
            self?.dismiss(animated: true, completion: nil)
        }
        self.present(dst, animated: true, completion: nil)
    }
}

