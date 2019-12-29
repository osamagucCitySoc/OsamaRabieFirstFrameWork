//
//  RandomGenerator.swift
//  OsamaRabieFirstFrameWork
//
//  Created by Osama Rabie on 29/12/2019.
//  Copyright © 2019 Osama Rabie. All rights reserved.
//

import Foundation


public class RandomGenerator {
    
    private init (){}
    
    public static func string() -> String
    {
        return UUID.init().uuidString;
    }
    
    public static func integer() -> Int
    {
        return Int(arc4random())
    }
}

