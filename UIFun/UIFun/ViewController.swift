//
//  ViewController.swift
//  UIFun
//
//  Created by Michael Dippery on 6/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // TODO: Set up IB outlets

    @IBOutlet weak var paintBucket: UIImageView!
    
    @IBOutlet weak var firstSegControl: UISegmentedControl!

    @IBOutlet weak var secondSegControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // TODO: Set the initial paint color to "red"
        paintBucket.paintColorName = "red"
    }

    func mixColors(withFirst first: String, second: String) -> String {
        // TODO: Mix colors and return a string indicating the name of the mixed color
        // (e.g., "red", "purple", "blue")
        
        switch (first.lowercaseString, second.lowercaseString) {
            
        case ("yellow", "yellow"):
            return "yellow"
            
        case ("blue", "blue"):
            return "blue"
            
        case ("red", "yellow"):
            return "orange"
        case ("yellow", "red"):
            return "orange"
            
        case ("red", "blue"):
            return "purple"
        case ("blue", "red"):
            return "purple"
            
        case ("yellow", "blue"):
            return "green"
        case ("blue", "yellow"):
            return "green"
            
        default:
        return "red"
        }
    }

    func colorSelected(sender: UISegmentedControl) {
        // TODO: Mix each selected color and set the paint color to the mixed color
        
        var firstColorTapped = firstSegControl.color.name
        var secondColorTapped = secondSegControl.color.name
       
        
        if sender == firstSegControl {
            firstColorTapped = sender.color.name
        }
        else {
            secondColorTapped = sender.color.name
        }
        
        
        paintBucket.paintColorName = mixColors(withFirst: firstColorTapped, second: secondColorTapped)
    }
}
