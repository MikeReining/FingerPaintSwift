//
//  ViewController.swift
//  FingerPaintSwift
//
//  Created by Michael Reining on 1/23/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: Gestures
    
    @IBAction func handlePan(recognizer: UIPanGestureRecognizer) {
        
        // Calculate new position with every pan handle
        let currentLocation = recognizer.view!.center
        let newLocation = recognizer.translationInView(self.view)
        let distanceX = (currentLocation.x + newLocation.x) / 2
        let distanceY = (currentLocation.y + newLocation.y) / 2
        let pathTravelled = sqrt((distanceX * distanceX + distanceY * distanceY ))
        
        

    }
    
    
}

