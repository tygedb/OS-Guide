//
//  ipadSmilyDrawing.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 6/17/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit

class ipadSmilyDrawing: UIView {

    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        //// Color Declarations
        let color12 = UIColor(red: 0.296, green: 0.228, blue: 0.228, alpha: 1.000)
        
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 55, y: 17, width: 340, height: 341))
        StyleKitName.color.setFill()
        ovalPath.fill()
        
        
        //// Oval 3 Drawing
        let oval3Path = UIBezierPath(ovalIn: CGRect(x: 247, y: 116, width: 68, height: 70))
        UIColor.black.setFill()
        oval3Path.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        UIColor.black.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()
        
        
        //// Polygon Drawing
        let polygonPath = UIBezierPath()
        polygonPath.move(to: CGPoint(x: 225, y: 202))
        polygonPath.addLine(to: CGPoint(x: 246.89, y: 233))
        polygonPath.addLine(to: CGPoint(x: 225, y: 264))
        polygonPath.addLine(to: CGPoint(x: 203.11, y: 233))
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
        bezier4Path.move(to: CGPoint(x: 188.5, y: 104.5))
        bezier4Path.addCurve(to: CGPoint(x: 140.5, y: 116.5), controlPoint1: CGPoint(x: 163.53, y: 100.5), controlPoint2: CGPoint(x: 140.5, y: 116.5))
        bezier4Path.lineCapStyle = .round;
        
        UIColor.black.setStroke()
        bezier4Path.lineWidth = 5
        bezier4Path.stroke()
        
        
        //// Bezier 6 Drawing
        let bezier6Path = UIBezierPath()
        UIColor.black.setFill()
        bezier6Path.fill()
       
        UIColor.black.setStroke()
        bezier6Path.lineWidth = 5
        bezier6Path.stroke()
        
        
        //// Bezier 3 Drawing
        let bezier3Path = UIBezierPath()
        bezier3Path.move(to: CGPoint(x: 211.6, y: 296))
        bezier3Path.addCurve(to: CGPoint(x: 201.16, y: 334.97), controlPoint1: CGPoint(x: 212.87, y: 304.72), controlPoint2: CGPoint(x: 199.38, y: 323.36))
        bezier3Path.addCurve(to: CGPoint(x: 229, y: 357.45), controlPoint1: CGPoint(x: 203.37, y: 349.34), controlPoint2: CGPoint(x: 226.18, y: 358.87))
        bezier3Path.addCurve(to: CGPoint(x: 240.3, y: 347.71), controlPoint1: CGPoint(x: 230.51, y: 356.69), controlPoint2: CGPoint(x: 235.8, y: 352.56))
        bezier3Path.addCurve(to: CGPoint(x: 248.13, y: 334.97), controlPoint1: CGPoint(x: 243.98, y: 343.76), controlPoint2: CGPoint(x: 247, y: 339.47))
        bezier3Path.addCurve(to: CGPoint(x: 239.43, y: 296), controlPoint1: CGPoint(x: 252.4, y: 317.97), controlPoint2: CGPoint(x: 239.43, y: 296))
        bezier3Path.lineCapStyle = .round;
        
        color12.setFill()
        bezier3Path.fill()
        
        
        //// Bezier 7 Drawing
        let bezier7Path = UIBezierPath()
        bezier7Path.move(to: CGPoint(x: 157.5, y: 279.48))
        bezier7Path.addCurve(to: CGPoint(x: 224.4, y: 279.48), controlPoint1: CGPoint(x: 185.14, y: 279.52), controlPoint2: CGPoint(x: 206.92, y: 279.47))
        bezier7Path.addCurve(to: CGPoint(x: 292.5, y: 279.48), controlPoint1: CGPoint(x: 291.55, y: 279.52), controlPoint2: CGPoint(x: 292.5, y: 279.48))
        bezier7Path.addLine(to: CGPoint(x: 292.5, y: 279.48))
        bezier7Path.lineCapStyle = .round;
        
        UIColor.black.setFill()
        bezier7Path.fill()
        UIColor.black.setStroke()
        bezier7Path.lineWidth = 5
        bezier7Path.stroke()
        
        
        //// Oval 5 Drawing
        let oval5Path = UIBezierPath(ovalIn: CGRect(x: 266, y: 138, width: 30, height: 26))
        UIColor.blue.setFill()
        oval5Path.fill()
        
        
        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: 137, y: 116, width: 68, height: 70))
        UIColor.black.setFill()
        oval2Path.fill()
        
        
        //// Oval 4 Drawing
        let oval4Path = UIBezierPath(ovalIn: CGRect(x: 155, y: 138, width: 30, height: 26))
        UIColor.blue.setFill()
        oval4Path.fill()
        
        
        //// Bezier 8 Drawing
        let bezier8Path = UIBezierPath()
        bezier8Path.move(to: CGPoint(x: 313.5, y: 116.5))
        bezier8Path.addCurve(to: CGPoint(x: 301.5, y: 109.5), controlPoint1: CGPoint(x: 310.17, y: 115.36), controlPoint2: CGPoint(x: 306.35, y: 112.57))
        bezier8Path.addCurve(to: CGPoint(x: 287.5, y: 102.5), controlPoint1: CGPoint(x: 297.38, y: 106.89), controlPoint2: CGPoint(x: 292.42, y: 104.03))
        bezier8Path.addCurve(to: CGPoint(x: 262.5, y: 100.5), controlPoint1: CGPoint(x: 275.68, y: 98.83), controlPoint2: CGPoint(x: 262.5, y: 100.5))
        bezier8Path.lineCapStyle = .round;
        
        UIColor.black.setStroke()
        bezier8Path.lineWidth = 5
        bezier8Path.stroke()

    }
    

}
