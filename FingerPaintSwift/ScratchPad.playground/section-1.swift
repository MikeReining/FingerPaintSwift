// Playground - noun: a place where people can play

import Cocoa

var str = "Hello, playground"

struct DrawingModel {
    var pointArray: [CGPoint]
}

var drawingModel = DrawingModel(pointArray: [CGPoint]())

drawingModel.pointArray

var myArray = [1,2,3,4,5]

for i in myArray {
    println(i)
}