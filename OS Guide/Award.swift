//
//  Award.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/17/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit

@IBDesignable
class Award: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        

        
        //// Color Declarations
        let color2 = UIColor(red: 0.011, green: 0.047, blue: 0.976, alpha: 1.000)
        let redGradient2Color = UIColor(red: 0.169, green: 0.184, blue: 0.212, alpha: 1.000)
        
        //// Gradient Declarations
        let redGradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKitName.red.cgColor, StyleKitName.red.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor, StyleKitName.ellipse1Color.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor], locations: [0.01, 1, 1, 1, 1])!
        let redGradient2 = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [redGradient2Color.cgColor, redGradient2Color.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor, StyleKitName.ellipse1Color.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor], locations: [0.01, 1, 1, 1, 1])!
        
        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = StyleKitName.color.withAlphaComponent(0.63 * StyleKitName.color.cgColor.alpha)
        shadow.shadowOffset = CGSize(width: 2.1, height: 2.1)
        shadow.shadowBlurRadius = 5
        
        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 140, y: 165))
        bezierPath.addCurve(to: CGPoint(x: 100.65, y: 234), controlPoint1: CGPoint(x: 105.02, y: 227), controlPoint2: CGPoint(x: 100.65, y: 234))
        bezierPath.addLine(to: CGPoint(x: 93, y: 213))
        bezierPath.addLine(to: CGPoint(x: 121.42, y: 165))
        bezierPath.lineCapStyle = .round;
        
        bezierPath.lineJoinStyle = .round;
        
        StyleKitName.red.setFill()
        bezierPath.fill()
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 152, y: 159))
        bezier2Path.addCurve(to: CGPoint(x: 189, y: 234), controlPoint1: CGPoint(x: 172, y: 200), controlPoint2: CGPoint(x: 189, y: 234))
        bezier2Path.addLine(to: CGPoint(x: 199, y: 213))
        bezier2Path.addLine(to: CGPoint(x: 170, y: 159))
        color2.setFill()
        bezier2Path.fill()
        
        
        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 68, y: 20, width: 158, height: 159))
        StyleKitName.color.setFill()
        ovalPath.fill()
        
        
        //// exact-touchid-logo.psd Group
        //// ID Drawing
        let iDPath = UIBezierPath()
        iDPath.move(to: CGPoint(x: 121.98, y: 108.97))
        iDPath.addCurve(to: CGPoint(x: 120.81, y: 108.31), controlPoint1: CGPoint(x: 121.48, y: 109.07), controlPoint2: CGPoint(x: 120.98, y: 108.79))
        iDPath.addCurve(to: CGPoint(x: 120.34, y: 91.75), controlPoint1: CGPoint(x: 118.9, y: 102.89), controlPoint2: CGPoint(x: 118.73, y: 97.17))
        iDPath.addCurve(to: CGPoint(x: 121.61, y: 91.07), controlPoint1: CGPoint(x: 120.5, y: 91.22), controlPoint2: CGPoint(x: 121.07, y: 90.92))
        iDPath.addCurve(to: CGPoint(x: 122.31, y: 92.32), controlPoint1: CGPoint(x: 122.16, y: 91.23), controlPoint2: CGPoint(x: 122.47, y: 91.78))
        iDPath.addCurve(to: CGPoint(x: 122.74, y: 107.66), controlPoint1: CGPoint(x: 120.82, y: 97.33), controlPoint2: CGPoint(x: 120.97, y: 102.63))
        iDPath.addCurve(to: CGPoint(x: 122.11, y: 108.93), controlPoint1: CGPoint(x: 122.93, y: 108.18), controlPoint2: CGPoint(x: 122.65, y: 108.75))
        iDPath.addCurve(to: CGPoint(x: 121.98, y: 108.97), controlPoint1: CGPoint(x: 122.07, y: 108.95), controlPoint2: CGPoint(x: 122.02, y: 108.96))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 123.13, y: 88.98))
        iDPath.addCurve(to: CGPoint(x: 122.49, y: 88.91), controlPoint1: CGPoint(x: 122.92, y: 89.03), controlPoint2: CGPoint(x: 122.7, y: 89))
        iDPath.addCurve(to: CGPoint(x: 122, y: 87.57), controlPoint1: CGPoint(x: 121.98, y: 88.67), controlPoint2: CGPoint(x: 121.76, y: 88.07))
        iDPath.addCurve(to: CGPoint(x: 146.3, y: 72.49), controlPoint1: CGPoint(x: 126.34, y: 78.64), controlPoint2: CGPoint(x: 136.1, y: 72.59))
        iDPath.addCurve(to: CGPoint(x: 147.33, y: 73.49), controlPoint1: CGPoint(x: 146.86, y: 72.49), controlPoint2: CGPoint(x: 147.32, y: 72.93))
        iDPath.addCurve(to: CGPoint(x: 146.32, y: 74.5), controlPoint1: CGPoint(x: 147.34, y: 74.04), controlPoint2: CGPoint(x: 146.88, y: 74.49))
        iDPath.addCurve(to: CGPoint(x: 123.85, y: 88.43), controlPoint1: CGPoint(x: 136.88, y: 74.59), controlPoint2: CGPoint(x: 127.86, y: 80.19))
        iDPath.addCurve(to: CGPoint(x: 123.13, y: 88.98), controlPoint1: CGPoint(x: 123.71, y: 88.73), controlPoint2: CGPoint(x: 123.43, y: 88.92))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 173.18, y: 100.11))
        iDPath.addCurve(to: CGPoint(x: 172.98, y: 100.13), controlPoint1: CGPoint(x: 173.12, y: 100.12), controlPoint2: CGPoint(x: 173.05, y: 100.13))
        iDPath.addCurve(to: CGPoint(x: 171.95, y: 99.13), controlPoint1: CGPoint(x: 172.42, y: 100.13), controlPoint2: CGPoint(x: 171.96, y: 99.69))
        iDPath.addCurve(to: CGPoint(x: 160, y: 78.25), controlPoint1: CGPoint(x: 171.87, y: 90.68), controlPoint2: CGPoint(x: 167.29, y: 82.68))
        iDPath.addCurve(to: CGPoint(x: 150.89, y: 74.86), controlPoint1: CGPoint(x: 157.24, y: 76.58), controlPoint2: CGPoint(x: 154.09, y: 75.4))
        iDPath.addCurve(to: CGPoint(x: 150.05, y: 73.7), controlPoint1: CGPoint(x: 150.33, y: 74.77), controlPoint2: CGPoint(x: 149.96, y: 74.25))
        iDPath.addCurve(to: CGPoint(x: 151.24, y: 72.88), controlPoint1: CGPoint(x: 150.15, y: 73.15), controlPoint2: CGPoint(x: 150.68, y: 72.79))
        iDPath.addCurve(to: CGPoint(x: 161.08, y: 76.54), controlPoint1: CGPoint(x: 154.7, y: 73.47), controlPoint2: CGPoint(x: 158.1, y: 74.73))
        iDPath.addCurve(to: CGPoint(x: 174, y: 99.12), controlPoint1: CGPoint(x: 168.96, y: 81.33), controlPoint2: CGPoint(x: 173.91, y: 89.98))
        iDPath.addCurve(to: CGPoint(x: 173.18, y: 100.11), controlPoint1: CGPoint(x: 174, y: 99.6), controlPoint2: CGPoint(x: 173.65, y: 100.02))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 144.16, y: 125.94))
        iDPath.addCurve(to: CGPoint(x: 143.64, y: 125.9), controlPoint1: CGPoint(x: 143.99, y: 125.97), controlPoint2: CGPoint(x: 143.81, y: 125.96))
        iDPath.addCurve(to: CGPoint(x: 142.99, y: 124.63), controlPoint1: CGPoint(x: 143.1, y: 125.73), controlPoint2: CGPoint(x: 142.81, y: 125.16))
        iDPath.addLine(to: CGPoint(x: 143.02, y: 124.55))
        iDPath.addCurve(to: CGPoint(x: 143.98, y: 121.7), controlPoint1: CGPoint(x: 143.34, y: 123.6), controlPoint2: CGPoint(x: 143.67, y: 122.65))
        iDPath.addCurve(to: CGPoint(x: 145.27, y: 121.05), controlPoint1: CGPoint(x: 144.15, y: 121.17), controlPoint2: CGPoint(x: 144.73, y: 120.88))
        iDPath.addCurve(to: CGPoint(x: 145.93, y: 122.32), controlPoint1: CGPoint(x: 145.81, y: 121.22), controlPoint2: CGPoint(x: 146.1, y: 121.79))
        iDPath.addCurve(to: CGPoint(x: 144.96, y: 125.19), controlPoint1: CGPoint(x: 145.61, y: 123.28), controlPoint2: CGPoint(x: 145.29, y: 124.23))
        iDPath.addLine(to: CGPoint(x: 144.93, y: 125.27))
        iDPath.addCurve(to: CGPoint(x: 144.16, y: 125.94), controlPoint1: CGPoint(x: 144.81, y: 125.62), controlPoint2: CGPoint(x: 144.51, y: 125.87))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 146.47, y: 118.64))
        iDPath.addCurve(to: CGPoint(x: 146.01, y: 118.62), controlPoint1: CGPoint(x: 146.32, y: 118.67), controlPoint2: CGPoint(x: 146.17, y: 118.66))
        iDPath.addCurve(to: CGPoint(x: 145.28, y: 117.4), controlPoint1: CGPoint(x: 145.47, y: 118.49), controlPoint2: CGPoint(x: 145.14, y: 117.94))
        iDPath.addCurve(to: CGPoint(x: 145.61, y: 99.53), controlPoint1: CGPoint(x: 146.78, y: 111.75), controlPoint2: CGPoint(x: 146.89, y: 105.74))
        iDPath.addCurve(to: CGPoint(x: 146.41, y: 98.35), controlPoint1: CGPoint(x: 145.5, y: 98.99), controlPoint2: CGPoint(x: 145.86, y: 98.46))
        iDPath.addCurve(to: CGPoint(x: 147.62, y: 99.13), controlPoint1: CGPoint(x: 146.97, y: 98.24), controlPoint2: CGPoint(x: 147.51, y: 98.59))
        iDPath.addCurve(to: CGPoint(x: 147.26, y: 117.91), controlPoint1: CGPoint(x: 148.96, y: 105.64), controlPoint2: CGPoint(x: 148.84, y: 111.96))
        iDPath.addCurve(to: CGPoint(x: 146.47, y: 118.64), controlPoint1: CGPoint(x: 147.16, y: 118.29), controlPoint2: CGPoint(x: 146.84, y: 118.56))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 139.69, y: 125.1))
        iDPath.addCurve(to: CGPoint(x: 139.14, y: 125.06), controlPoint1: CGPoint(x: 139.51, y: 125.14), controlPoint2: CGPoint(x: 139.32, y: 125.12))
        iDPath.addCurve(to: CGPoint(x: 138.53, y: 123.77), controlPoint1: CGPoint(x: 138.61, y: 124.87), controlPoint2: CGPoint(x: 138.33, y: 124.29))
        iDPath.addCurve(to: CGPoint(x: 139.1, y: 122.24), controlPoint1: CGPoint(x: 138.72, y: 123.26), controlPoint2: CGPoint(x: 138.91, y: 122.75))
        iDPath.addCurve(to: CGPoint(x: 141.89, y: 112.38), controlPoint1: CGPoint(x: 140.18, y: 119.31), controlPoint2: CGPoint(x: 141.38, y: 115.9))
        iDPath.addCurve(to: CGPoint(x: 141.35, y: 100.34), controlPoint1: CGPoint(x: 142.46, y: 108.49), controlPoint2: CGPoint(x: 142.08, y: 104.75))
        iDPath.addCurve(to: CGPoint(x: 144.19, y: 94.77), controlPoint1: CGPoint(x: 140.97, y: 98.06), controlPoint2: CGPoint(x: 142.09, y: 95.87))
        iDPath.addCurve(to: CGPoint(x: 150.3, y: 95.54), controlPoint1: CGPoint(x: 146.26, y: 93.69), controlPoint2: CGPoint(x: 148.6, y: 93.98))
        iDPath.addCurve(to: CGPoint(x: 152.41, y: 101.17), controlPoint1: CGPoint(x: 151.92, y: 97.02), controlPoint2: CGPoint(x: 152.19, y: 99.32))
        iDPath.addCurve(to: CGPoint(x: 152.52, y: 102.02), controlPoint1: CGPoint(x: 152.45, y: 101.46), controlPoint2: CGPoint(x: 152.48, y: 101.75))
        iDPath.addCurve(to: CGPoint(x: 152.97, y: 108.38), controlPoint1: CGPoint(x: 152.83, y: 104.22), controlPoint2: CGPoint(x: 152.98, y: 106.36))
        iDPath.addCurve(to: CGPoint(x: 151.94, y: 109.38), controlPoint1: CGPoint(x: 152.97, y: 108.94), controlPoint2: CGPoint(x: 152.51, y: 109.39))
        iDPath.addCurve(to: CGPoint(x: 150.92, y: 108.38), controlPoint1: CGPoint(x: 151.38, y: 109.38), controlPoint2: CGPoint(x: 150.92, y: 108.93))
        iDPath.addCurve(to: CGPoint(x: 150.49, y: 102.29), controlPoint1: CGPoint(x: 150.93, y: 106.45), controlPoint2: CGPoint(x: 150.79, y: 104.4))
        iDPath.addCurve(to: CGPoint(x: 150.38, y: 101.4), controlPoint1: CGPoint(x: 150.45, y: 102.01), controlPoint2: CGPoint(x: 150.42, y: 101.71))
        iDPath.addCurve(to: CGPoint(x: 148.9, y: 97.01), controlPoint1: CGPoint(x: 150.18, y: 99.72), controlPoint2: CGPoint(x: 149.97, y: 97.99))
        iDPath.addCurve(to: CGPoint(x: 145.16, y: 96.54), controlPoint1: CGPoint(x: 147.66, y: 95.87), controlPoint2: CGPoint(x: 146.15, y: 96.02))
        iDPath.addCurve(to: CGPoint(x: 143.37, y: 100.01), controlPoint1: CGPoint(x: 144.16, y: 97.06), controlPoint2: CGPoint(x: 143.09, y: 98.29))
        iDPath.addCurve(to: CGPoint(x: 143.92, y: 112.67), controlPoint1: CGPoint(x: 144.14, y: 104.61), controlPoint2: CGPoint(x: 144.52, y: 108.52))
        iDPath.addCurve(to: CGPoint(x: 141.03, y: 122.92), controlPoint1: CGPoint(x: 143.38, y: 116.37), controlPoint2: CGPoint(x: 142.14, y: 119.9))
        iDPath.addCurve(to: CGPoint(x: 140.45, y: 124.46), controlPoint1: CGPoint(x: 140.84, y: 123.44), controlPoint2: CGPoint(x: 140.64, y: 123.95))
        iDPath.addCurve(to: CGPoint(x: 139.69, y: 125.1), controlPoint1: CGPoint(x: 140.33, y: 124.8), controlPoint2: CGPoint(x: 140.03, y: 125.03))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 148.9, y: 125.98))
        iDPath.addCurve(to: CGPoint(x: 148.4, y: 125.96), controlPoint1: CGPoint(x: 148.74, y: 126.01), controlPoint2: CGPoint(x: 148.57, y: 126.01))
        iDPath.addCurve(to: CGPoint(x: 147.72, y: 124.7), controlPoint1: CGPoint(x: 147.86, y: 125.79), controlPoint2: CGPoint(x: 147.55, y: 125.23))
        iDPath.addCurve(to: CGPoint(x: 150.6, y: 113.11), controlPoint1: CGPoint(x: 149, y: 120.62), controlPoint2: CGPoint(x: 150.09, y: 116.94))
        iDPath.addCurve(to: CGPoint(x: 151.75, y: 112.24), controlPoint1: CGPoint(x: 150.67, y: 112.56), controlPoint2: CGPoint(x: 151.19, y: 112.17))
        iDPath.addCurve(to: CGPoint(x: 152.63, y: 113.37), controlPoint1: CGPoint(x: 152.31, y: 112.31), controlPoint2: CGPoint(x: 152.71, y: 112.82))
        iDPath.addCurve(to: CGPoint(x: 149.68, y: 125.29), controlPoint1: CGPoint(x: 152.1, y: 117.35), controlPoint2: CGPoint(x: 150.98, y: 121.12))
        iDPath.addCurve(to: CGPoint(x: 148.9, y: 125.98), controlPoint1: CGPoint(x: 149.56, y: 125.65), controlPoint2: CGPoint(x: 149.26, y: 125.91))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 135.53, y: 123.56))
        iDPath.addCurve(to: CGPoint(x: 134.95, y: 123.51), controlPoint1: CGPoint(x: 135.34, y: 123.6), controlPoint2: CGPoint(x: 135.14, y: 123.59))
        iDPath.addCurve(to: CGPoint(x: 134.38, y: 122.2), controlPoint1: CGPoint(x: 134.43, y: 123.3), controlPoint2: CGPoint(x: 134.17, y: 122.72))
        iDPath.addCurve(to: CGPoint(x: 136.72, y: 115.75), controlPoint1: CGPoint(x: 135.22, y: 120.15), controlPoint2: CGPoint(x: 136.1, y: 117.95))
        iDPath.addCurve(to: CGPoint(x: 137.63, y: 105), controlPoint1: CGPoint(x: 137.71, y: 112.27), controlPoint2: CGPoint(x: 138.01, y: 108.65))
        iDPath.addCurve(to: CGPoint(x: 137.29, y: 102.86), controlPoint1: CGPoint(x: 137.56, y: 104.3), controlPoint2: CGPoint(x: 137.43, y: 103.6))
        iDPath.addCurve(to: CGPoint(x: 136.89, y: 98.53), controlPoint1: CGPoint(x: 137.03, y: 101.46), controlPoint2: CGPoint(x: 136.76, y: 100.02))
        iDPath.addCurve(to: CGPoint(x: 139.18, y: 93.17), controlPoint1: CGPoint(x: 137.06, y: 96.58), controlPoint2: CGPoint(x: 137.87, y: 94.67))
        iDPath.addCurve(to: CGPoint(x: 140.63, y: 93.05), controlPoint1: CGPoint(x: 139.55, y: 92.74), controlPoint2: CGPoint(x: 140.19, y: 92.69))
        iDPath.addCurve(to: CGPoint(x: 140.74, y: 94.47), controlPoint1: CGPoint(x: 141.06, y: 93.41), controlPoint2: CGPoint(x: 141.11, y: 94.04))
        iDPath.addCurve(to: CGPoint(x: 138.93, y: 98.7), controlPoint1: CGPoint(x: 139.71, y: 95.66), controlPoint2: CGPoint(x: 139.06, y: 97.16))
        iDPath.addCurve(to: CGPoint(x: 139.3, y: 102.49), controlPoint1: CGPoint(x: 138.82, y: 99.92), controlPoint2: CGPoint(x: 139.06, y: 101.17))
        iDPath.addCurve(to: CGPoint(x: 139.67, y: 104.8), controlPoint1: CGPoint(x: 139.45, y: 103.24), controlPoint2: CGPoint(x: 139.59, y: 104.02))
        iDPath.addCurve(to: CGPoint(x: 138.7, y: 116.29), controlPoint1: CGPoint(x: 140.08, y: 108.7), controlPoint2: CGPoint(x: 139.75, y: 112.57))
        iDPath.addCurve(to: CGPoint(x: 136.28, y: 122.95), controlPoint1: CGPoint(x: 138.05, y: 118.59), controlPoint2: CGPoint(x: 137.15, y: 120.84))
        iDPath.addCurve(to: CGPoint(x: 135.53, y: 123.56), controlPoint1: CGPoint(x: 136.15, y: 123.28), controlPoint2: CGPoint(x: 135.86, y: 123.5))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 153.88, y: 125.11))
        iDPath.addCurve(to: CGPoint(x: 153.4, y: 125.1), controlPoint1: CGPoint(x: 153.72, y: 125.14), controlPoint2: CGPoint(x: 153.56, y: 125.14))
        iDPath.addCurve(to: CGPoint(x: 152.69, y: 123.86), controlPoint1: CGPoint(x: 152.86, y: 124.95), controlPoint2: CGPoint(x: 152.54, y: 124.39))
        iDPath.addCurve(to: CGPoint(x: 155.03, y: 113.32), controlPoint1: CGPoint(x: 153.64, y: 120.51), controlPoint2: CGPoint(x: 154.58, y: 116.92))
        iDPath.addCurve(to: CGPoint(x: 154.86, y: 101.74), controlPoint1: CGPoint(x: 155.48, y: 109.66), controlPoint2: CGPoint(x: 155.43, y: 105.76))
        iDPath.addLine(to: CGPoint(x: 154.85, y: 101.69))
        iDPath.addCurve(to: CGPoint(x: 151.53, y: 93.53), controlPoint1: CGPoint(x: 154.4, y: 98.5), controlPoint2: CGPoint(x: 153.98, y: 95.5))
        iDPath.addCurve(to: CGPoint(x: 143.94, y: 92.27), controlPoint1: CGPoint(x: 149.42, y: 91.82), controlPoint2: CGPoint(x: 146.51, y: 91.34))
        iDPath.addCurve(to: CGPoint(x: 142.62, y: 91.68), controlPoint1: CGPoint(x: 143.41, y: 92.46), controlPoint2: CGPoint(x: 142.82, y: 92.2))
        iDPath.addCurve(to: CGPoint(x: 143.23, y: 90.39), controlPoint1: CGPoint(x: 142.43, y: 91.16), controlPoint2: CGPoint(x: 142.7, y: 90.58))
        iDPath.addCurve(to: CGPoint(x: 152.83, y: 91.97), controlPoint1: CGPoint(x: 146.48, y: 89.21), controlPoint2: CGPoint(x: 150.16, y: 89.82))
        iDPath.addCurve(to: CGPoint(x: 156.88, y: 101.42), controlPoint1: CGPoint(x: 155.9, y: 94.44), controlPoint2: CGPoint(x: 156.4, y: 97.99))
        iDPath.addLine(to: CGPoint(x: 156.89, y: 101.46))
        iDPath.addCurve(to: CGPoint(x: 157.06, y: 113.56), controlPoint1: CGPoint(x: 157.48, y: 105.66), controlPoint2: CGPoint(x: 157.54, y: 109.73))
        iDPath.addCurve(to: CGPoint(x: 154.66, y: 124.4), controlPoint1: CGPoint(x: 156.6, y: 117.29), controlPoint2: CGPoint(x: 155.64, y: 120.97))
        iDPath.addCurve(to: CGPoint(x: 153.88, y: 125.11), controlPoint1: CGPoint(x: 154.56, y: 124.77), controlPoint2: CGPoint(x: 154.24, y: 125.04))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 131.74, y: 121.4))
        iDPath.addCurve(to: CGPoint(x: 131.14, y: 121.33), controlPoint1: CGPoint(x: 131.55, y: 121.43), controlPoint2: CGPoint(x: 131.34, y: 121.42))
        iDPath.addCurve(to: CGPoint(x: 130.6, y: 120.02), controlPoint1: CGPoint(x: 130.62, y: 121.12), controlPoint2: CGPoint(x: 130.38, y: 120.53))
        iDPath.addCurve(to: CGPoint(x: 132.41, y: 115.16), controlPoint1: CGPoint(x: 131.4, y: 118.19), controlPoint2: CGPoint(x: 131.97, y: 116.65))
        iDPath.addCurve(to: CGPoint(x: 133.67, y: 114.48), controlPoint1: CGPoint(x: 132.56, y: 114.63), controlPoint2: CGPoint(x: 133.13, y: 114.32))
        iDPath.addCurve(to: CGPoint(x: 134.37, y: 115.72), controlPoint1: CGPoint(x: 134.22, y: 114.63), controlPoint2: CGPoint(x: 134.53, y: 115.18))
        iDPath.addCurve(to: CGPoint(x: 132.48, y: 120.81), controlPoint1: CGPoint(x: 133.91, y: 117.29), controlPoint2: CGPoint(x: 133.31, y: 118.9))
        iDPath.addCurve(to: CGPoint(x: 131.74, y: 121.4), controlPoint1: CGPoint(x: 132.35, y: 121.12), controlPoint2: CGPoint(x: 132.06, y: 121.33))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 134.5, y: 111.9))
        iDPath.addCurve(to: CGPoint(x: 134.2, y: 111.92), controlPoint1: CGPoint(x: 134.4, y: 111.92), controlPoint2: CGPoint(x: 134.3, y: 111.93))
        iDPath.addCurve(to: CGPoint(x: 133.28, y: 110.82), controlPoint1: CGPoint(x: 133.63, y: 111.86), controlPoint2: CGPoint(x: 133.22, y: 111.37))
        iDPath.addCurve(to: CGPoint(x: 133.15, y: 104.68), controlPoint1: CGPoint(x: 133.49, y: 108.74), controlPoint2: CGPoint(x: 133.45, y: 106.67))
        iDPath.addCurve(to: CGPoint(x: 132.92, y: 103.27), controlPoint1: CGPoint(x: 133.08, y: 104.22), controlPoint2: CGPoint(x: 133, y: 103.74))
        iDPath.addCurve(to: CGPoint(x: 132.49, y: 98.28), controlPoint1: CGPoint(x: 132.64, y: 101.67), controlPoint2: CGPoint(x: 132.35, y: 100.01))
        iDPath.addCurve(to: CGPoint(x: 137.45, y: 88.77), controlPoint1: CGPoint(x: 132.78, y: 94.62), controlPoint2: CGPoint(x: 134.59, y: 91.15))
        iDPath.addCurve(to: CGPoint(x: 148.14, y: 85.65), controlPoint1: CGPoint(x: 140.33, y: 86.37), controlPoint2: CGPoint(x: 144.23, y: 85.23))
        iDPath.addCurve(to: CGPoint(x: 157.91, y: 90.95), controlPoint1: CGPoint(x: 152.06, y: 86.06), controlPoint2: CGPoint(x: 155.62, y: 88))
        iDPath.addCurve(to: CGPoint(x: 157.71, y: 92.36), controlPoint1: CGPoint(x: 158.25, y: 91.39), controlPoint2: CGPoint(x: 158.16, y: 92.02))
        iDPath.addCurve(to: CGPoint(x: 156.28, y: 92.17), controlPoint1: CGPoint(x: 157.26, y: 92.7), controlPoint2: CGPoint(x: 156.62, y: 92.61))
        iDPath.addCurve(to: CGPoint(x: 147.92, y: 87.64), controlPoint1: CGPoint(x: 154.32, y: 89.65), controlPoint2: CGPoint(x: 151.28, y: 88))
        iDPath.addCurve(to: CGPoint(x: 138.77, y: 90.3), controlPoint1: CGPoint(x: 144.57, y: 87.29), controlPoint2: CGPoint(x: 141.23, y: 88.25))
        iDPath.addCurve(to: CGPoint(x: 134.53, y: 98.44), controlPoint1: CGPoint(x: 136.33, y: 92.34), controlPoint2: CGPoint(x: 134.78, y: 95.3))
        iDPath.addCurve(to: CGPoint(x: 134.94, y: 102.93), controlPoint1: CGPoint(x: 134.41, y: 99.92), controlPoint2: CGPoint(x: 134.67, y: 101.38))
        iDPath.addCurve(to: CGPoint(x: 135.18, y: 104.39), controlPoint1: CGPoint(x: 135.02, y: 103.41), controlPoint2: CGPoint(x: 135.11, y: 103.9))
        iDPath.addCurve(to: CGPoint(x: 135.32, y: 111.02), controlPoint1: CGPoint(x: 135.5, y: 106.54), controlPoint2: CGPoint(x: 135.55, y: 108.78))
        iDPath.addCurve(to: CGPoint(x: 134.5, y: 111.9), controlPoint1: CGPoint(x: 135.27, y: 111.47), controlPoint2: CGPoint(x: 134.93, y: 111.82))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 128.34, y: 118.61))
        iDPath.addCurve(to: CGPoint(x: 127.75, y: 118.55), controlPoint1: CGPoint(x: 128.15, y: 118.64), controlPoint2: CGPoint(x: 127.94, y: 118.63))
        iDPath.addCurve(to: CGPoint(x: 127.19, y: 117.24), controlPoint1: CGPoint(x: 127.23, y: 118.34), controlPoint2: CGPoint(x: 126.97, y: 117.76))
        iDPath.addCurve(to: CGPoint(x: 128.71, y: 112.16), controlPoint1: CGPoint(x: 127.93, y: 115.46), controlPoint2: CGPoint(x: 128.42, y: 113.8))
        iDPath.addCurve(to: CGPoint(x: 128.94, y: 106.55), controlPoint1: CGPoint(x: 129.02, y: 110.38), controlPoint2: CGPoint(x: 129.1, y: 108.49))
        iDPath.addCurve(to: CGPoint(x: 128.53, y: 103.7), controlPoint1: CGPoint(x: 128.87, y: 105.61), controlPoint2: CGPoint(x: 128.7, y: 104.68))
        iDPath.addCurve(to: CGPoint(x: 128.07, y: 100.24), controlPoint1: CGPoint(x: 128.33, y: 102.58), controlPoint2: CGPoint(x: 128.13, y: 101.42))
        iDPath.addCurve(to: CGPoint(x: 131, y: 89.5), controlPoint1: CGPoint(x: 127.88, y: 96.49), controlPoint2: CGPoint(x: 128.92, y: 92.67))
        iDPath.addCurve(to: CGPoint(x: 151.35, y: 81.74), controlPoint1: CGPoint(x: 135.3, y: 82.94), controlPoint2: CGPoint(x: 143.67, y: 79.75))
        iDPath.addCurve(to: CGPoint(x: 152.08, y: 82.97), controlPoint1: CGPoint(x: 151.9, y: 81.88), controlPoint2: CGPoint(x: 152.23, y: 82.43))
        iDPath.addCurve(to: CGPoint(x: 150.83, y: 83.68), controlPoint1: CGPoint(x: 151.94, y: 83.5), controlPoint2: CGPoint(x: 151.38, y: 83.82))
        iDPath.addCurve(to: CGPoint(x: 132.72, y: 90.59), controlPoint1: CGPoint(x: 144, y: 81.91), controlPoint2: CGPoint(x: 136.55, y: 84.75))
        iDPath.addCurve(to: CGPoint(x: 130.12, y: 100.13), controlPoint1: CGPoint(x: 130.87, y: 93.41), controlPoint2: CGPoint(x: 129.94, y: 96.8))
        iDPath.addCurve(to: CGPoint(x: 130.55, y: 103.36), controlPoint1: CGPoint(x: 130.17, y: 101.2), controlPoint2: CGPoint(x: 130.35, y: 102.25))
        iDPath.addCurve(to: CGPoint(x: 130.98, y: 106.39), controlPoint1: CGPoint(x: 130.72, y: 104.34), controlPoint2: CGPoint(x: 130.9, y: 105.36))
        iDPath.addCurve(to: CGPoint(x: 130.73, y: 112.49), controlPoint1: CGPoint(x: 131.15, y: 108.5), controlPoint2: CGPoint(x: 131.07, y: 110.55))
        iDPath.addCurve(to: CGPoint(x: 129.08, y: 118), controlPoint1: CGPoint(x: 130.42, y: 114.28), controlPoint2: CGPoint(x: 129.88, y: 116.08))
        iDPath.addCurve(to: CGPoint(x: 128.34, y: 118.61), controlPoint1: CGPoint(x: 128.95, y: 118.32), controlPoint2: CGPoint(x: 128.66, y: 118.54))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 164.47, y: 119.38))
        iDPath.addCurve(to: CGPoint(x: 164.08, y: 119.38), controlPoint1: CGPoint(x: 164.34, y: 119.4), controlPoint2: CGPoint(x: 164.22, y: 119.41))
        iDPath.addCurve(to: CGPoint(x: 163.26, y: 118.22), controlPoint1: CGPoint(x: 163.53, y: 119.28), controlPoint2: CGPoint(x: 163.16, y: 118.76))
        iDPath.addCurve(to: CGPoint(x: 164.18, y: 107.12), controlPoint1: CGPoint(x: 163.97, y: 114.35), controlPoint2: CGPoint(x: 164.28, y: 110.61))
        iDPath.addCurve(to: CGPoint(x: 162.35, y: 94.39), controlPoint1: CGPoint(x: 164.03, y: 101.8), controlPoint2: CGPoint(x: 163.44, y: 97.76))
        iDPath.addCurve(to: CGPoint(x: 154.85, y: 85.3), controlPoint1: CGPoint(x: 161.12, y: 90.61), controlPoint2: CGPoint(x: 158.39, y: 87.3))
        iDPath.addCurve(to: CGPoint(x: 154.48, y: 83.93), controlPoint1: CGPoint(x: 154.36, y: 85.03), controlPoint2: CGPoint(x: 154.19, y: 84.41))
        iDPath.addCurve(to: CGPoint(x: 155.88, y: 83.56), controlPoint1: CGPoint(x: 154.76, y: 83.45), controlPoint2: CGPoint(x: 155.38, y: 83.29))
        iDPath.addCurve(to: CGPoint(x: 164.3, y: 93.78), controlPoint1: CGPoint(x: 159.84, y: 85.8), controlPoint2: CGPoint(x: 162.92, y: 89.53))
        iDPath.addCurve(to: CGPoint(x: 166.22, y: 107.06), controlPoint1: CGPoint(x: 165.46, y: 97.34), controlPoint2: CGPoint(x: 166.07, y: 101.55))
        iDPath.addCurve(to: CGPoint(x: 165.27, y: 118.57), controlPoint1: CGPoint(x: 166.33, y: 110.7), controlPoint2: CGPoint(x: 166.01, y: 114.57))
        iDPath.addCurve(to: CGPoint(x: 164.47, y: 119.38), controlPoint1: CGPoint(x: 165.2, y: 118.99), controlPoint2: CGPoint(x: 164.87, y: 119.3))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 125.18, y: 114.91))
        iDPath.addCurve(to: CGPoint(x: 124.71, y: 114.89), controlPoint1: CGPoint(x: 125.03, y: 114.94), controlPoint2: CGPoint(x: 124.87, y: 114.94))
        iDPath.addCurve(to: CGPoint(x: 123.99, y: 113.66), controlPoint1: CGPoint(x: 124.17, y: 114.75), controlPoint2: CGPoint(x: 123.84, y: 114.2))
        iDPath.addCurve(to: CGPoint(x: 124.58, y: 107.17), controlPoint1: CGPoint(x: 124.54, y: 111.62), controlPoint2: CGPoint(x: 124.74, y: 109.44))
        iDPath.addCurve(to: CGPoint(x: 124.15, y: 104), controlPoint1: CGPoint(x: 124.5, y: 106.12), controlPoint2: CGPoint(x: 124.33, y: 105.09))
        iDPath.addCurve(to: CGPoint(x: 123.65, y: 99.85), controlPoint1: CGPoint(x: 123.92, y: 102.66), controlPoint2: CGPoint(x: 123.68, y: 101.27))
        iDPath.addCurve(to: CGPoint(x: 133.53, y: 80.82), controlPoint1: CGPoint(x: 123.47, y: 92.38), controlPoint2: CGPoint(x: 127.25, y: 85.09))
        iDPath.addCurve(to: CGPoint(x: 134.95, y: 81.07), controlPoint1: CGPoint(x: 133.99, y: 80.5), controlPoint2: CGPoint(x: 134.63, y: 80.62))
        iDPath.addCurve(to: CGPoint(x: 134.7, y: 82.47), controlPoint1: CGPoint(x: 135.28, y: 81.53), controlPoint2: CGPoint(x: 135.16, y: 82.15))
        iDPath.addCurve(to: CGPoint(x: 125.7, y: 99.8), controlPoint1: CGPoint(x: 128.98, y: 86.36), controlPoint2: CGPoint(x: 125.53, y: 93))
        iDPath.addCurve(to: CGPoint(x: 126.17, y: 103.67), controlPoint1: CGPoint(x: 125.73, y: 101.08), controlPoint2: CGPoint(x: 125.94, y: 102.34))
        iDPath.addCurve(to: CGPoint(x: 126.62, y: 107.03), controlPoint1: CGPoint(x: 126.35, y: 104.76), controlPoint2: CGPoint(x: 126.54, y: 105.88))
        iDPath.addCurve(to: CGPoint(x: 125.97, y: 114.18), controlPoint1: CGPoint(x: 126.8, y: 109.52), controlPoint2: CGPoint(x: 126.58, y: 111.92))
        iDPath.addCurve(to: CGPoint(x: 125.18, y: 114.91), controlPoint1: CGPoint(x: 125.86, y: 114.56), controlPoint2: CGPoint(x: 125.55, y: 114.84))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 169.57, y: 104.04))
        iDPath.addCurve(to: CGPoint(x: 169.46, y: 104.06), controlPoint1: CGPoint(x: 169.53, y: 104.05), controlPoint2: CGPoint(x: 169.5, y: 104.06))
        iDPath.addCurve(to: CGPoint(x: 168.35, y: 103.16), controlPoint1: CGPoint(x: 168.9, y: 104.11), controlPoint2: CGPoint(x: 168.4, y: 103.71))
        iDPath.addCurve(to: CGPoint(x: 164.79, y: 89.18), controlPoint1: CGPoint(x: 167.9, y: 98.63), controlPoint2: CGPoint(x: 167.23, y: 93.44))
        iDPath.addCurve(to: CGPoint(x: 156.59, y: 81.33), controlPoint1: CGPoint(x: 162.95, y: 85.95), controlPoint2: CGPoint(x: 160.04, y: 83.16))
        iDPath.addCurve(to: CGPoint(x: 138.55, y: 80.4), controlPoint1: CGPoint(x: 151.08, y: 78.39), controlPoint2: CGPoint(x: 144.34, y: 78.04))
        iDPath.addCurve(to: CGPoint(x: 137.21, y: 79.86), controlPoint1: CGPoint(x: 138.03, y: 80.61), controlPoint2: CGPoint(x: 137.43, y: 80.37))
        iDPath.addCurve(to: CGPoint(x: 137.77, y: 78.55), controlPoint1: CGPoint(x: 137, y: 79.35), controlPoint2: CGPoint(x: 137.24, y: 78.76))
        iDPath.addCurve(to: CGPoint(x: 157.57, y: 79.56), controlPoint1: CGPoint(x: 144.12, y: 75.96), controlPoint2: CGPoint(x: 151.52, y: 76.33))
        iDPath.addCurve(to: CGPoint(x: 166.58, y: 88.2), controlPoint1: CGPoint(x: 161.35, y: 81.58), controlPoint2: CGPoint(x: 164.55, y: 84.65))
        iDPath.addCurve(to: CGPoint(x: 170.38, y: 102.96), controlPoint1: CGPoint(x: 169.21, y: 92.8), controlPoint2: CGPoint(x: 169.92, y: 98.23))
        iDPath.addCurve(to: CGPoint(x: 169.57, y: 104.04), controlPoint1: CGPoint(x: 170.44, y: 103.48), controlPoint2: CGPoint(x: 170.08, y: 103.94))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 169.76, y: 112.83))
        iDPath.addCurve(to: CGPoint(x: 169.5, y: 112.84), controlPoint1: CGPoint(x: 169.68, y: 112.84), controlPoint2: CGPoint(x: 169.59, y: 112.85))
        iDPath.addCurve(to: CGPoint(x: 168.54, y: 111.78), controlPoint1: CGPoint(x: 168.94, y: 112.81), controlPoint2: CGPoint(x: 168.51, y: 112.34))
        iDPath.addCurve(to: CGPoint(x: 168.62, y: 107.7), controlPoint1: CGPoint(x: 168.62, y: 110.45), controlPoint2: CGPoint(x: 168.64, y: 109.08))
        iDPath.addCurve(to: CGPoint(x: 169.62, y: 106.67), controlPoint1: CGPoint(x: 168.6, y: 107.14), controlPoint2: CGPoint(x: 169.05, y: 106.68))
        iDPath.addCurve(to: CGPoint(x: 170.66, y: 107.66), controlPoint1: CGPoint(x: 170.19, y: 106.66), controlPoint2: CGPoint(x: 170.65, y: 107.1))
        iDPath.addCurve(to: CGPoint(x: 170.58, y: 111.9), controlPoint1: CGPoint(x: 170.69, y: 109.09), controlPoint2: CGPoint(x: 170.67, y: 110.52))
        iDPath.addCurve(to: CGPoint(x: 169.76, y: 112.83), controlPoint1: CGPoint(x: 170.56, y: 112.36), controlPoint2: CGPoint(x: 170.21, y: 112.74))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 159.08, y: 123.09))
        iDPath.addCurve(to: CGPoint(x: 157.87, y: 122.3), controlPoint1: CGPoint(x: 158.53, y: 123.2), controlPoint2: CGPoint(x: 157.98, y: 122.84))
        iDPath.addCurve(to: CGPoint(x: 157.99, y: 121.48), controlPoint1: CGPoint(x: 157.82, y: 122.04), controlPoint2: CGPoint(x: 157.87, y: 121.89))
        iDPath.addCurve(to: CGPoint(x: 159.26, y: 116.06), controlPoint1: CGPoint(x: 158.22, y: 120.73), controlPoint2: CGPoint(x: 158.82, y: 118.75))
        iDPath.addCurve(to: CGPoint(x: 159.74, y: 107.04), controlPoint1: CGPoint(x: 159.72, y: 113.23), controlPoint2: CGPoint(x: 159.9, y: 110.02))
        iDPath.addCurve(to: CGPoint(x: 158.99, y: 98.94), controlPoint1: CGPoint(x: 159.57, y: 103.62), controlPoint2: CGPoint(x: 159.31, y: 100.82))
        iDPath.addCurve(to: CGPoint(x: 158.27, y: 96.08), controlPoint1: CGPoint(x: 158.65, y: 97.01), controlPoint2: CGPoint(x: 158.28, y: 96.08))
        iDPath.addCurve(to: CGPoint(x: 158.84, y: 94.77), controlPoint1: CGPoint(x: 158.06, y: 95.56), controlPoint2: CGPoint(x: 158.31, y: 94.98))
        iDPath.addCurve(to: CGPoint(x: 160.17, y: 95.31), controlPoint1: CGPoint(x: 159.36, y: 94.56), controlPoint2: CGPoint(x: 159.96, y: 94.8))
        iDPath.addCurve(to: CGPoint(x: 161.01, y: 98.61), controlPoint1: CGPoint(x: 160.19, y: 95.36), controlPoint2: CGPoint(x: 160.63, y: 96.43))
        iDPath.addCurve(to: CGPoint(x: 161.79, y: 106.94), controlPoint1: CGPoint(x: 161.34, y: 100.57), controlPoint2: CGPoint(x: 161.61, y: 103.45))
        iDPath.addCurve(to: CGPoint(x: 161.28, y: 116.38), controlPoint1: CGPoint(x: 161.95, y: 110.06), controlPoint2: CGPoint(x: 161.77, y: 113.41))
        iDPath.addCurve(to: CGPoint(x: 159.95, y: 122.05), controlPoint1: CGPoint(x: 160.82, y: 119.2), controlPoint2: CGPoint(x: 160.19, y: 121.27))
        iDPath.addCurve(to: CGPoint(x: 159.89, y: 122.27), controlPoint1: CGPoint(x: 159.92, y: 122.15), controlPoint2: CGPoint(x: 159.9, y: 122.23))
        iDPath.addCurve(to: CGPoint(x: 159.08, y: 123.09), controlPoint1: CGPoint(x: 159.82, y: 122.67), controlPoint2: CGPoint(x: 159.51, y: 123))
        iDPath.close()
        context!.saveGState()

        iDPath.addClip()
        context!.drawLinearGradient(redGradient, start: CGPoint(x: 146.62, y: 72.49), end: CGPoint(x: 146.62, y: 126), options: CGGradientDrawingOptions())
        context!.restoreGState()
        
        
        
   
        
        
        
        //// Text Drawing
        let textRect = CGRect(x: 108.83, y: 133.37, width: 76.51, height: 25.21)
        let textPath = UIBezierPath(rect: textRect)
        StyleKitName.color.setFill()
        textPath.fill()
        let textTextContent = NSString(string: "Congrats!")
        context!.saveGState()
        context!.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        
        let textFontAttributes = [NSFontAttributeName: UIFont.italicSystemFont(ofSize: UIFont.labelSize()), NSForegroundColorAttributeName: UIColor.black(), NSParagraphStyleAttributeName: textStyle]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        let textTextRect: CGRect = CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight)
        context!.saveGState()
        context!.clipTo(textRect)
        textTextContent.draw(in: textRect, withAttributes: textFontAttributes)
        context!.restoreGState()
        
        ////// Text Text Inner Shadow
        
        
        context!.saveGState()
        context!.clipTo(textRect)
        context!.setShadow(offset: CGSize.zero, blur: 0)
        context!.setAlpha((shadow.shadowColor as! UIColor).cgColor.alpha)
        context!.beginTransparencyLayer(auxiliaryInfo: nil)
        let textOpaqueTextShadow = (shadow.shadowColor as! UIColor).withAlphaComponent(1)
        context!.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: textOpaqueTextShadow.cgColor)
        context!.setBlendMode(.sourceOut)
        context!.beginTransparencyLayer(auxiliaryInfo: nil)
        
        textOpaqueTextShadow.setFill()
        
        let textInnerShadowFontAttributes = [NSFontAttributeName: UIFont.italicSystemFont(ofSize: UIFont.labelSize()), NSForegroundColorAttributeName: (shadow.shadowColor as! UIColor), NSParagraphStyleAttributeName: textStyle]
        textTextContent.draw(in: textTextRect, withAttributes: textInnerShadowFontAttributes)
        
        context!.endTransparencyLayer()
        context!.endTransparencyLayer()
        context!.restoreGState()
        
        
        context!.restoreGState()
        
        
        
        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: 36, y: 364, width: 279, height: 30), cornerRadius: 11)
        context!.saveGState()
        rectanglePath.addClip()
        context!.drawLinearGradient(redGradient2, start: CGPoint(x: 175.5, y: 364), end: CGPoint(x: 175.5, y: 394), options: CGGradientDrawingOptions())
        context!.restoreGState()

    }
    

}
