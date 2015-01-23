//
//  DrawingView.swift
//  FingerPaintSwift
//
//  Created by Michael Reining on 1/23/15.
//  Copyright (c) 2015 Mike Reining. All rights reserved.
//

import UIKit

class DrawingView: UIView {
    var path = UIBezierPath()
    var model: DrawingModel?
    
    override func drawRect(rect: CGRect) {
        
        
        // Bezier Path
        var myBezierPath = UIBezierPath()
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
        
        //        myBezierPath.moveToPoint(CGPoint(x: 100, y: 100))
        //        myBezierPath.addCurveToPoint(CGPoint(x: 300, y: 300), controlPoint1: CGPoint(x: 200, y: 100), controlPoint2: CGPoint(x: 300, y: 300))
        //        myBezierPath.closePath()
        UIColor.blackColor().setStroke()
        myBezierPath.stroke()
    
        
    }
    
    func drawNewRect(rect: CGRect) {
            

    }
    
    
    
}
