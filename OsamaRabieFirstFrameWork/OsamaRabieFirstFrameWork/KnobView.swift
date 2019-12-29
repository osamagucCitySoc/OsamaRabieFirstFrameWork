//
//  KnobView.swift
//  OsamaRabieFirstFrameWork
//
//  Created by Osama Rabie on 29/12/2019.
//  Copyright © 2019 Osama Rabie. All rights reserved.
//

import UIKit

public class KnobView: UIView {

    @IBOutlet  weak var progressBar: UIProgressView!
    
    @IBOutlet  weak var resultLabel: UILabel!
    
    @IBOutlet var contentView: UIView!
    
    private var countFrom:Float = 0
    
    private var timer:Timer = Timer()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        // YES
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit()
    {
        Bundle.main.loadNibNamed("KnobView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = self.bounds
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
