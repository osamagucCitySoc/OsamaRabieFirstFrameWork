//
//  LoginService.swift
//  OsamaRabieFirstFrameWork
//
//  Created by Osama Rabie on 30/12/2019.
//  Copyright © 2019 Osama Rabie. All rights reserved.
//

import Foundation
import UIKit

public typealias LoginCompletionBlock = (_ email:String?,_ password:String?) -> ()

public class LoginService
{
    private init(){}
    
    public static func StartLogin(loginCompletionHandler:@escaping LoginCompletionBlock)->UIViewController
    {
        let podBundle = Bundle(for: LoginService.self)
        
        if let bundleURL = podBundle.url(forResource: "OsamaRabieFirstFrameWork", withExtension: "bundle") {
            if let bundle = Bundle(url: bundleURL) {
                
                let viewController:LoginViewController = UIStoryboard(name: "PoStoryboard", bundle: bundle).instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
                viewController.loginClickedBlock = loginCompletionHandler
                return viewController
            }
        }
        return UIViewController.init()
    }
}
