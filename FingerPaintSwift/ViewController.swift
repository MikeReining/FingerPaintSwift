//
//  ViewController.swift
//  FingerPaintSwift
//
//  Created by Michael Reining on 1/23/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var drawingView: DrawingView!
    var drawingModel = DrawingModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        drawingView.model = drawingModel
        
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
        let newLocation = recognizer.locationInView(self.view)
        drawingModel.pointArray.append(newLocation)
        self.view.setNeedsDisplay()
        
        // Customize line width based on
        let velocity = recognizer.velocityInView(self.view)
        let magnitude = sqrt((velocity.x * velocity.x) + (velocity.y * velocity.y))
        let lineWidthMultiplier = magnitude / 50
        println("\(lineWidthMultiplier)")
        drawingView.myBezierPath.lineWidth = lineWidthMultiplier
        
        
        if recognizer.state == .Ended {
            println("Pan has ended")
            println("\(drawingModel.pointArray.count)")
            println("\(drawingView.model!.pointArray.count)")
//          drawingModel.pointArray.removeAll(keepCapacity: false)

        }
        
        
        

    }
    
    
}

