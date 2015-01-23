//
//  DrawingView.swift
//  FingerPaintSwift
//
//  Created by Michael Reining on 1/23/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class DrawingView: UIView {
    var myBezierPath = UIBezierPath()
    var model: DrawingModel?
    
    override func drawRect(rect: CGRect) {
        
        
        // Bezier Path
        if let m = model {
            
            var firstPointDone = false
            
            for i in m.pointArray {
                if firstPointDone {
                    myBezierPath.addLineToPoint(i)
                } else {
                    myBezierPath.moveToPoint(i)
                    firstPointDone = true
                }
            }
        }
        
        UIColor.redColor().setStroke()
        myBezierPath.stroke()
        
    }
    
}
