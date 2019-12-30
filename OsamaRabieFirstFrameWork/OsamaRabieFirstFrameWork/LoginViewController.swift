//
//  LoginViewController.swift
//  OsamaRabieFirstFrameWork
//
//  Created by Osama Rabie on 30/12/2019.
//  Copyright © 2019 Osama Rabie. All rights reserved.
//

import UIKit

 public class LoginViewController: UIViewController {

    @IBOutlet private weak var emailTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    
     var loginClickedBlock:LoginCompletionBlock?
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction private func loginClicked(_ sender: Any) {
        if let block = loginClickedBlock
        {
            block(emailTextField.text ?? "",passwordTextField.text ?? "")
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
