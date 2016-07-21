//: Playground - noun: a place where people can play

import UIKit

let color = UIColor(red: 0.995, green: 0.934, blue: 0.000, alpha: 1.000)

//// Oval Drawing
let ovalPath = UIBezierPath(ovalInRect: CGRect(x: 94, y: 23, width: 57, height: 54))
color.setFill()
ovalPath.fill()

//// Bezier Drawing
let bezierPath = UIBezierPath()
bezierPath.moveToPoint(CGPoint(x: 107.91, y: 57.5))
bezierPath.addCurveToPoint(CGPoint(x: 94, y: 94.5), controlPoint1: CGPoint(x: 95.9, y: 92.5), controlPoint2: CGPoint(x: 94, y: 94.5))
bezierPath.addLineToPoint(CGPoint(x: 103.49, y: 106.5))
bezierPath.addLineToPoint(CGPoint(x: 115.5, y: 75.5))
UIColor.blueColor()
bezierPath.fill()


//// Bezier 3 Drawing
let bezier3Path = UIBezierPath()
bezier3Path.moveToPoint(CGPoint(x: 137.72, y: 48.5))
bezier3Path.addCurveToPoint(CGPoint(x: 146.96, y: 96.78), controlPoint1: CGPoint(x: 146.96, y: 95.68), controlPoint2: CGPoint(x: 152.1, y: 86.91))
bezier3Path.addCurveToPoint(CGPoint(x: 141.83, y: 106.66), controlPoint1: CGPoint(x: 141.83, y: 106.66), controlPoint2: CGPoint(x: 141.83, y: 107.75))
bezier3Path.addCurveToPoint(CGPoint(x: 129.5, y: 70.45), controlPoint1: CGPoint(x: 141.83, y: 105.56), controlPoint2: CGPoint(x: 129.5, y: 70.45))
UIColor.redColor()
bezier3Path.fill()
