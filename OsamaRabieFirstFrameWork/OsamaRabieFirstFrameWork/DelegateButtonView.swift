//
//  DelegateButtonView.swift
//  OsamaRabieFirstFrameWork
//
//  Created by Osama Rabie on 29/12/2019.
//  Copyright © 2019 Osama Rabie. All rights reserved.
//

import UIKit



//
// This is the DELEGATE PROTOCOL
//
public protocol ButtonClickDelegate {
    func didFinishDownloading(message:String)
}

public class DelegateButtonView: UIView {

    var buttonDelegate:ButtonClickDelegate?
    @IBOutlet var contentView: UIView!
    
   override public init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // latest 1.0.17
        super.init(coder: aDecoder)
        commonInit()
    }
    
    public func commonInit()
    {
        let podBundle = Bundle(for: self.classForCoder)
        
        if let bundleURL = podBundle.url(forResource: "OsamaRabieFirstFrameWork", withExtension: "bundle") {
            if let bundle = Bundle(url: bundleURL) {
                
                //let knobNib = UINib(nibName:"" , bundle: bundle)
                bundle.loadNibNamed("DelegateButtonView", owner: self, options: nil)
                addSubview(contentView)
                contentView.frame = self.bounds
                
            }else {
                
                assertionFailure("Could not load the bundle")
                
            }
        }
    }

    @IBAction func popItClicked(_ sender: Any) {
        if let delegate = buttonDelegate
        {
            delegate.didFinishDownloading(message: "Halla walla!")
        }
    }
}
