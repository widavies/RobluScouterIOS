//
//  RSlider.swift
//  RobluScouterIOS
//
//  Created by Will H Davies on 9/28/18.
//  Copyright © 2018 Will H Davies. All rights reserved.
//

import Foundation

// RSlider stores an integer that has a max and min value
class RSlider : RMetric {
    
    public var value: Int;
    public var min: Int;
    public var max: Int;
    
    init(ID: Int, title: String, min: Int, max: Int, value: Int) {
        self.min = min;
        self.max = max;
        self.value = value;
        super.init(ID: ID, title: title);
    }
    
    override func getFormDescriptor() -> String {
        return "Type: Slider\nMin: " + String(min) + " Max: " + " Default value: " + String(value);
    }
    
    override func clone() -> RMetric {
        return RSlider(ID: self.ID, title: self.title, min: self.min, max: self.max, value: self.value);
    }
    
    override func toString() -> String {
        return String(value)
    }
    
}