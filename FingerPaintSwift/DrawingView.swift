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

    
    override func drawRect(rect: CGRect) {
        
        // Draw basic rectangle
        var context = UIGraphicsGetCurrentContext()
        //        CGContextSetFillColorWithColor(context, UIColor.blueColor().CGColor)
        //        CGContextSetStrokeColorWithColor(context, UIColor.yellowColor().CGColor)
        UIColor.yellowColor().setFill()
        UIColor.redColor().setStroke()
        //        CGContextSetLineWidth(context, 10)
        
        var firstRect = CGRectMake(50, 50, 50, 50)
        CGContextStrokeRect(context, firstRect)
        CGContextFillRect(context, firstRect)
        

        // Draw diagonal green line
        CGContextSetLineWidth(context, 2.0)
        var lineColor = UIColor.greenColor().CGColor
        CGContextMoveToPoint(context, 30, 30)
        CGContextAddLineToPoint(context, 300, 400)
        CGContextStrokePath(context)
        
        
        // Draw smooth curve
        context = UIGraphicsGetCurrentContext()
        CGContextSetLineWidth(context, 4.0)
        CGContextSetStrokeColorWithColor(context,
            UIColor.blueColor().CGColor)
        CGContextMoveToPoint(context, 10, 10)
        CGContextAddCurveToPoint(context, 0, 50, 300, 250, 300, 400)
        CGContextStrokePath(context)
        
        // Bezier Path
        var myBezierPath = UIBezierPath()
        myBezierPath.moveToPoint(CGPoint(x: 100, y: 100))
        myBezierPath.addCurveToPoint(CGPoint(x: 300, y: 300), controlPoint1: CGPoint(x: 200, y: 100), controlPoint2: CGPoint(x: 300, y: 300))
//        myBezierPath.closePath()
        UIColor.blackColor().setStroke()
        myBezierPath.stroke()
    
        
    }
    
}
