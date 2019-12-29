//
//  KnobView.swift
//  OsamaRabieFirstFrameWork
//
//  Created by Osama Rabie on 29/12/2019.
//  Copyright © 2019 Osama Rabie. All rights reserved.
//

import UIKit

public class KnobView: UIView {

    @IBOutlet private weak var progressBar: UIProgressView!
    
    @IBOutlet private weak var resultLabel: UILabel!
    
    private var countFrom:Float = 0
    
    private var timer:Timer = Timer()
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        progressBar.setProgress(0, animated: true)
        resultLabel.text = ""
    }
    
    
    public func start(countingFrom:Float)
    {
        countFrom = countingFrom
        
        progressBar.setProgress(0, animated: true)
        
        resultLabel.text = "\(countFrom)"
        
        timer.invalidate()
        
        timer = Timer(fire: Date(), interval: 1, repeats: true, block: { [weak self] (_timer)  in
            if countingFrom > 0
            {
                self?.countFrom = self!.countFrom - 1
                DispatchQueue.main.async {
                    self?.progressBar.setProgress(1-(self!.countFrom/countingFrom), animated: true)
                    self?.resultLabel.text = "\(self!.countFrom)"
                }
            }else
            {
                _timer.invalidate()
            }
        })
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
