//
//  Smily.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/17/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//
//DONE
import UIKit
@IBDesignable
class Smily: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        //// Color Declarations
        let color12 = UIColor(red: 0.296, green: 0.228, blue: 0.228, alpha: 1.000)
        
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 45, y: 21, width: 162, height: 169))
        StyleKitName.color.setFill()
        ovalPath.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: 67, y: 52, width: 35, height: 34))
        UIColor.black.setFill()
        oval2Path.fill()
        
        
        //// Oval 3 Drawing
        let oval3Path = UIBezierPath(ovalIn: CGRect(x: 146, y: 52, width: 35, height: 34))
        UIColor.black.setFill()
        oval3Path.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        UIColor.black.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()
        
        
        //// Polygon Drawing
        let polygonPath = UIBezierPath()
        polygonPath.move(to: CGPoint(x: 126, y: 84))
        polygonPath.addLine(to: CGPoint(x: 138.78, y: 105))
        polygonPath.addLine(to: CGPoint(x: 126, y: 126))
        polygonPath.addLine(to: CGPoint(x: 113.22, y: 105))
        polygonPath.close()
        UIColor.black.setFill()
        polygonPath.fill()
        
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        UIColor.black.setStroke()
        bezierPath.lineWidth = 1
        bezierPath.stroke()
        
        
        //// Bezier 4 Drawing
        let bezier4Path = UIBezierPath()
        bezier4Path.move(to: CGPoint(x: 98.5, y: 47.5))
        bezier4Path.addCurve(to: CGPoint(x: 71.5, y: 50.5), controlPoint1: CGPoint(x: 75.25, y: 48.5), controlPoint2: CGPoint(x: 71.5, y: 50.5))
        bezier4Path.lineCapStyle = .round;
        
        UIColor.black.setStroke()
        bezier4Path.lineWidth = 5
        bezier4Path.stroke()
        
        
        //// Bezier 5 Drawing
        context?.saveGState()
        context?.translateBy(x: 150, y: 56)
        context?.rotate(by: -5.89 * CGFloat(M_PI) / 180)
        
        let bezier5Path = UIBezierPath()
        bezier5Path.move(to: CGPoint(x: 1.47, y: -9.4))
        bezier5Path.addCurve(to: CGPoint(x: 30.47, y: -1.4), controlPoint1: CGPoint(x: 37.47, y: -0.4), controlPoint2: CGPoint(x: 30.47, y: -1.4))
        bezier5Path.lineCapStyle = .round;
        
        UIColor.black.setFill()
        bezier5Path.fill()
        UIColor.black.setStroke()
        bezier5Path.lineWidth = 5
        bezier5Path.stroke()
        
        context?.restoreGState()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = UIBezierPath()
        UIColor.black.setFill()
        bezier6Path.fill()
        UIColor.black.setStroke()
        bezier6Path.lineWidth = 5
        bezier6Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 118.5, y: 158.5))
        bezier3Path.addCurve(to: CGPoint(x: 112.5, y: 184.5), controlPoint1: CGPoint(x: 119.23, y: 164.32), controlPoint2: CGPoint(x: 111.48, y: 176.76))
        bezier3Path.addCurve(to: CGPoint(x: 128.5, y: 199.5), controlPoint1: CGPoint(x: 113.77, y: 194.09), controlPoint2: CGPoint(x: 126.88, y: 200.44))
        bezier3Path.addCurve(to: CGPoint(x: 135, y: 193), controlPoint1: CGPoint(x: 129.37, y: 198.99), controlPoint2: CGPoint(x: 132.41, y: 196.24))
        bezier3Path.addCurve(to: CGPoint(x: 139.5, y: 184.5), controlPoint1: CGPoint(x: 137.11, y: 190.36), controlPoint2: CGPoint(x: 138.85, y: 187.5))
        bezier3Path.addCurve(to: CGPoint(x: 134.5, y: 158.5), controlPoint1: CGPoint(x: 141.95, y: 173.16), controlPoint2: CGPoint(x: 134.5, y: 158.5))
        bezier3Path.lineCapStyle = .round;
        
        color12.setFill()
        bezier3Path.fill()

        
        
        //// Bezier 7 Drawing
        let bezier7Path = UIBezierPath()
        bezier7Path.move(to: CGPoint(x: 71.5, y: 141.48))
        bezier7Path.addCurve(to: CGPoint(x: 125.52, y: 141.48), controlPoint1: CGPoint(x: 93.82, y: 141.52), controlPoint2: CGPoint(x: 111.4, y: 141.47))
        bezier7Path.addCurve(to: CGPoint(x: 180.5, y: 141.48), controlPoint1: CGPoint(x: 179.73, y: 141.52), controlPoint2: CGPoint(x: 180.5, y: 141.48))
        bezier7Path.addLine(to: CGPoint(x: 180.5, y: 141.48))
        bezier7Path.lineCapStyle = .round;
        
        UIColor.black.setFill()
        bezier7Path.fill()
        UIColor.black.setStroke()
        bezier7Path.lineWidth = 5
        bezier7Path.stroke()
        
        
        //// Oval 4 Drawing
        let oval4Path = UIBezierPath(ovalIn: CGRect(x: 78, y: 62, width: 14, height: 14))
        UIColor.blue.setFill()
        oval4Path.fill()
        
        
        //// Oval 5 Drawing
        let oval5Path = UIBezierPath(ovalIn: CGRect(x: 157, y: 62, width: 14, height: 14))
        UIColor.blue.setFill()
        oval5Path.fill()
    
    }
    

}
