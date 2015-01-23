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
        var context = UIGraphicsGetCurrentContext()
        //        CGContextSetFillColorWithColor(context, UIColor.blueColor().CGColor)
        //        CGContextSetStrokeColorWithColor(context, UIColor.yellowColor().CGColor)
        UIColor.yellowColor().setFill()
        UIColor.redColor().setStroke()
        //        CGContextSetLineWidth(context, 10)
        
        var firstRect = CGRectMake(50, 50, 50, 50)
        CGContextStrokeRect(context, firstRect)
        CGContextFillRect(context, firstRect)
        
    }
    
    
    
    
}
