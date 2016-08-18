//
//  StyleKitName.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/20/16.
//  Copyright (c) 2016 TygesiHelp. All rights reserved.
//
//



import UIKit

public class StyleKitName : NSObject {

    //// Cache

    private struct Cache {
        static let color: UIColor = UIColor(red: 0.983, green: 0.985, blue: 0.008, alpha: 1.000)
        static let ellipse1Color: UIColor = UIColor(red: 1.000, green: 1.000, blue: 1.000, alpha: 1.000)
        static let red: UIColor = UIColor(red: 1.000, green: 0.000, blue: 0.000, alpha: 1.000)
    }

    //// Colors

    public class var color: UIColor { return Cache.color }
    public class var ellipse1Color: UIColor { return Cache.ellipse1Color }
    public class var red: UIColor { return Cache.red }

    //// Drawing Methods

    public class func drawTouchID() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let color2 = UIColor(red: 0.011, green: 0.047, blue: 0.976, alpha: 1.000)

        //// Gradient Declarations
        let gradient2 = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKitName.red.cgColor, StyleKitName.red.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor, StyleKitName.color.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor] as CFArray, locations: [0.01, 1, 1, 1, 1])!

        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = StyleKitName.color.withAlphaComponent(0.63 * StyleKitName.color.cgColor.alpha)
        shadow.shadowOffset = CGSize(width: 2.1, height: 2.1)
        shadow.shadowBlurRadius = 5

        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 140, y: 182))
        bezierPath.addCurve(to: CGPoint(x: 100.65, y: 251), controlPoint1: CGPoint(x: 105.02, y: 244), controlPoint2: CGPoint(x: 100.65, y: 251))
        bezierPath.addLine(to: CGPoint(x: 93, y: 230))
        bezierPath.addLine(to: CGPoint(x: 121.42, y: 182))
        bezierPath.lineCapStyle = .round;

        bezierPath.lineJoinStyle = .round;

        StyleKitName.red.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 152, y: 176))
        bezier2Path.addCurve(to: CGPoint(x: 189, y: 251), controlPoint1: CGPoint(x: 172, y: 217), controlPoint2: CGPoint(x: 189, y: 251))
        bezier2Path.addLine(to: CGPoint(x: 199, y: 230))
        bezier2Path.addLine(to: CGPoint(x: 170, y: 176))
        color2.setFill()
        bezier2Path.fill()


        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 68, y: 37, width: 158, height: 159))
        StyleKitName.color.setFill()
        ovalPath.fill()


        //// exact-touchid-logo.psd Group
        //// ID Drawing
        let iDPath = UIBezierPath()
        iDPath.move(to: CGPoint(x: 121.98, y: 125.97))
        iDPath.addCurve(to: CGPoint(x: 120.81, y: 125.31), controlPoint1: CGPoint(x: 121.48, y: 126.07), controlPoint2: CGPoint(x: 120.98, y: 125.79))
        iDPath.addCurve(to: CGPoint(x: 120.34, y: 108.75), controlPoint1: CGPoint(x: 118.9, y: 119.89), controlPoint2: CGPoint(x: 118.73, y: 114.17))
        iDPath.addCurve(to: CGPoint(x: 121.61, y: 108.07), controlPoint1: CGPoint(x: 120.5, y: 108.22), controlPoint2: CGPoint(x: 121.07, y: 107.92))
        iDPath.addCurve(to: CGPoint(x: 122.31, y: 109.32), controlPoint1: CGPoint(x: 122.16, y: 108.23), controlPoint2: CGPoint(x: 122.47, y: 108.78))
        iDPath.addCurve(to: CGPoint(x: 122.74, y: 124.66), controlPoint1: CGPoint(x: 120.82, y: 114.33), controlPoint2: CGPoint(x: 120.97, y: 119.63))
        iDPath.addCurve(to: CGPoint(x: 122.11, y: 125.93), controlPoint1: CGPoint(x: 122.93, y: 125.18), controlPoint2: CGPoint(x: 122.65, y: 125.75))
        iDPath.addCurve(to: CGPoint(x: 121.98, y: 125.97), controlPoint1: CGPoint(x: 122.07, y: 125.95), controlPoint2: CGPoint(x: 122.02, y: 125.96))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 123.13, y: 105.98))
        iDPath.addCurve(to: CGPoint(x: 122.49, y: 105.91), controlPoint1: CGPoint(x: 122.92, y: 106.03), controlPoint2: CGPoint(x: 122.7, y: 106))
        iDPath.addCurve(to: CGPoint(x: 122, y: 104.57), controlPoint1: CGPoint(x: 121.98, y: 105.67), controlPoint2: CGPoint(x: 121.76, y: 105.07))
        iDPath.addCurve(to: CGPoint(x: 146.3, y: 89.49), controlPoint1: CGPoint(x: 126.34, y: 95.64), controlPoint2: CGPoint(x: 136.1, y: 89.59))
        iDPath.addCurve(to: CGPoint(x: 147.33, y: 90.49), controlPoint1: CGPoint(x: 146.86, y: 89.49), controlPoint2: CGPoint(x: 147.32, y: 89.93))
        iDPath.addCurve(to: CGPoint(x: 146.32, y: 91.5), controlPoint1: CGPoint(x: 147.34, y: 91.04), controlPoint2: CGPoint(x: 146.88, y: 91.49))
        iDPath.addCurve(to: CGPoint(x: 123.85, y: 105.43), controlPoint1: CGPoint(x: 136.88, y: 91.59), controlPoint2: CGPoint(x: 127.86, y: 97.19))
        iDPath.addCurve(to: CGPoint(x: 123.13, y: 105.98), controlPoint1: CGPoint(x: 123.71, y: 105.73), controlPoint2: CGPoint(x: 123.43, y: 105.92))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 173.18, y: 117.11))
        iDPath.addCurve(to: CGPoint(x: 172.98, y: 117.13), controlPoint1: CGPoint(x: 173.12, y: 117.12), controlPoint2: CGPoint(x: 173.05, y: 117.13))
        iDPath.addCurve(to: CGPoint(x: 171.95, y: 116.13), controlPoint1: CGPoint(x: 172.42, y: 117.13), controlPoint2: CGPoint(x: 171.96, y: 116.69))
        iDPath.addCurve(to: CGPoint(x: 160, y: 95.25), controlPoint1: CGPoint(x: 171.87, y: 107.68), controlPoint2: CGPoint(x: 167.29, y: 99.68))
        iDPath.addCurve(to: CGPoint(x: 150.89, y: 91.86), controlPoint1: CGPoint(x: 157.24, y: 93.58), controlPoint2: CGPoint(x: 154.09, y: 92.4))
        iDPath.addCurve(to: CGPoint(x: 150.05, y: 90.7), controlPoint1: CGPoint(x: 150.33, y: 91.77), controlPoint2: CGPoint(x: 149.96, y: 91.25))
        iDPath.addCurve(to: CGPoint(x: 151.24, y: 89.88), controlPoint1: CGPoint(x: 150.15, y: 90.15), controlPoint2: CGPoint(x: 150.68, y: 89.79))
        iDPath.addCurve(to: CGPoint(x: 161.08, y: 93.54), controlPoint1: CGPoint(x: 154.7, y: 90.47), controlPoint2: CGPoint(x: 158.1, y: 91.73))
        iDPath.addCurve(to: CGPoint(x: 174, y: 116.12), controlPoint1: CGPoint(x: 168.96, y: 98.33), controlPoint2: CGPoint(x: 173.91, y: 106.98))
        iDPath.addCurve(to: CGPoint(x: 173.18, y: 117.11), controlPoint1: CGPoint(x: 174, y: 116.6), controlPoint2: CGPoint(x: 173.65, y: 117.02))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 144.16, y: 142.94))
        iDPath.addCurve(to: CGPoint(x: 143.64, y: 142.9), controlPoint1: CGPoint(x: 143.99, y: 142.97), controlPoint2: CGPoint(x: 143.81, y: 142.96))
        iDPath.addCurve(to: CGPoint(x: 142.99, y: 141.63), controlPoint1: CGPoint(x: 143.1, y: 142.73), controlPoint2: CGPoint(x: 142.81, y: 142.16))
        iDPath.addLine(to: CGPoint(x: 143.02, y: 141.55))
        iDPath.addCurve(to: CGPoint(x: 143.98, y: 138.7), controlPoint1: CGPoint(x: 143.34, y: 140.6), controlPoint2: CGPoint(x: 143.67, y: 139.65))
        iDPath.addCurve(to: CGPoint(x: 145.27, y: 138.05), controlPoint1: CGPoint(x: 144.15, y: 138.17), controlPoint2: CGPoint(x: 144.73, y: 137.88))
        iDPath.addCurve(to: CGPoint(x: 145.93, y: 139.32), controlPoint1: CGPoint(x: 145.81, y: 138.22), controlPoint2: CGPoint(x: 146.1, y: 138.79))
        iDPath.addCurve(to: CGPoint(x: 144.96, y: 142.19), controlPoint1: CGPoint(x: 145.61, y: 140.28), controlPoint2: CGPoint(x: 145.29, y: 141.23))
        iDPath.addLine(to: CGPoint(x: 144.93, y: 142.27))
        iDPath.addCurve(to: CGPoint(x: 144.16, y: 142.94), controlPoint1: CGPoint(x: 144.81, y: 142.62), controlPoint2: CGPoint(x: 144.51, y: 142.87))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 146.47, y: 135.64))
        iDPath.addCurve(to: CGPoint(x: 146.01, y: 135.62), controlPoint1: CGPoint(x: 146.32, y: 135.67), controlPoint2: CGPoint(x: 146.17, y: 135.66))
        iDPath.addCurve(to: CGPoint(x: 145.28, y: 134.4), controlPoint1: CGPoint(x: 145.47, y: 135.49), controlPoint2: CGPoint(x: 145.14, y: 134.94))
        iDPath.addCurve(to: CGPoint(x: 145.61, y: 116.53), controlPoint1: CGPoint(x: 146.78, y: 128.75), controlPoint2: CGPoint(x: 146.89, y: 122.74))
        iDPath.addCurve(to: CGPoint(x: 146.41, y: 115.35), controlPoint1: CGPoint(x: 145.5, y: 115.99), controlPoint2: CGPoint(x: 145.86, y: 115.46))
        iDPath.addCurve(to: CGPoint(x: 147.62, y: 116.13), controlPoint1: CGPoint(x: 146.97, y: 115.24), controlPoint2: CGPoint(x: 147.51, y: 115.59))
        iDPath.addCurve(to: CGPoint(x: 147.26, y: 134.91), controlPoint1: CGPoint(x: 148.96, y: 122.64), controlPoint2: CGPoint(x: 148.84, y: 128.96))
        iDPath.addCurve(to: CGPoint(x: 146.47, y: 135.64), controlPoint1: CGPoint(x: 147.16, y: 135.29), controlPoint2: CGPoint(x: 146.84, y: 135.56))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 139.69, y: 142.1))
        iDPath.addCurve(to: CGPoint(x: 139.14, y: 142.06), controlPoint1: CGPoint(x: 139.51, y: 142.14), controlPoint2: CGPoint(x: 139.32, y: 142.12))
        iDPath.addCurve(to: CGPoint(x: 138.53, y: 140.77), controlPoint1: CGPoint(x: 138.61, y: 141.87), controlPoint2: CGPoint(x: 138.33, y: 141.29))
        iDPath.addCurve(to: CGPoint(x: 139.1, y: 139.24), controlPoint1: CGPoint(x: 138.72, y: 140.26), controlPoint2: CGPoint(x: 138.91, y: 139.75))
        iDPath.addCurve(to: CGPoint(x: 141.89, y: 129.38), controlPoint1: CGPoint(x: 140.18, y: 136.31), controlPoint2: CGPoint(x: 141.38, y: 132.9))
        iDPath.addCurve(to: CGPoint(x: 141.35, y: 117.34), controlPoint1: CGPoint(x: 142.46, y: 125.49), controlPoint2: CGPoint(x: 142.08, y: 121.75))
        iDPath.addCurve(to: CGPoint(x: 144.19, y: 111.77), controlPoint1: CGPoint(x: 140.97, y: 115.06), controlPoint2: CGPoint(x: 142.09, y: 112.87))
        iDPath.addCurve(to: CGPoint(x: 150.3, y: 112.54), controlPoint1: CGPoint(x: 146.26, y: 110.69), controlPoint2: CGPoint(x: 148.6, y: 110.98))
        iDPath.addCurve(to: CGPoint(x: 152.41, y: 118.17), controlPoint1: CGPoint(x: 151.92, y: 114.02), controlPoint2: CGPoint(x: 152.19, y: 116.32))
        iDPath.addCurve(to: CGPoint(x: 152.52, y: 119.02), controlPoint1: CGPoint(x: 152.45, y: 118.46), controlPoint2: CGPoint(x: 152.48, y: 118.75))
        iDPath.addCurve(to: CGPoint(x: 152.97, y: 125.38), controlPoint1: CGPoint(x: 152.83, y: 121.22), controlPoint2: CGPoint(x: 152.98, y: 123.36))
        iDPath.addCurve(to: CGPoint(x: 151.94, y: 126.38), controlPoint1: CGPoint(x: 152.97, y: 125.94), controlPoint2: CGPoint(x: 152.51, y: 126.39))
        iDPath.addCurve(to: CGPoint(x: 150.92, y: 125.38), controlPoint1: CGPoint(x: 151.38, y: 126.38), controlPoint2: CGPoint(x: 150.92, y: 125.93))
        iDPath.addCurve(to: CGPoint(x: 150.49, y: 119.29), controlPoint1: CGPoint(x: 150.93, y: 123.45), controlPoint2: CGPoint(x: 150.79, y: 121.4))
        iDPath.addCurve(to: CGPoint(x: 150.38, y: 118.4), controlPoint1: CGPoint(x: 150.45, y: 119.01), controlPoint2: CGPoint(x: 150.42, y: 118.71))
        iDPath.addCurve(to: CGPoint(x: 148.9, y: 114.01), controlPoint1: CGPoint(x: 150.18, y: 116.72), controlPoint2: CGPoint(x: 149.97, y: 114.99))
        iDPath.addCurve(to: CGPoint(x: 145.16, y: 113.54), controlPoint1: CGPoint(x: 147.66, y: 112.87), controlPoint2: CGPoint(x: 146.15, y: 113.02))
        iDPath.addCurve(to: CGPoint(x: 143.37, y: 117.01), controlPoint1: CGPoint(x: 144.16, y: 114.06), controlPoint2: CGPoint(x: 143.09, y: 115.29))
        iDPath.addCurve(to: CGPoint(x: 143.92, y: 129.67), controlPoint1: CGPoint(x: 144.14, y: 121.61), controlPoint2: CGPoint(x: 144.52, y: 125.52))
        iDPath.addCurve(to: CGPoint(x: 141.03, y: 139.92), controlPoint1: CGPoint(x: 143.38, y: 133.37), controlPoint2: CGPoint(x: 142.14, y: 136.9))
        iDPath.addCurve(to: CGPoint(x: 140.45, y: 141.46), controlPoint1: CGPoint(x: 140.84, y: 140.44), controlPoint2: CGPoint(x: 140.64, y: 140.95))
        iDPath.addCurve(to: CGPoint(x: 139.69, y: 142.1), controlPoint1: CGPoint(x: 140.33, y: 141.8), controlPoint2: CGPoint(x: 140.03, y: 142.03))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 148.9, y: 142.98))
        iDPath.addCurve(to: CGPoint(x: 148.4, y: 142.96), controlPoint1: CGPoint(x: 148.74, y: 143.01), controlPoint2: CGPoint(x: 148.57, y: 143.01))
        iDPath.addCurve(to: CGPoint(x: 147.72, y: 141.7), controlPoint1: CGPoint(x: 147.86, y: 142.79), controlPoint2: CGPoint(x: 147.55, y: 142.23))
        iDPath.addCurve(to: CGPoint(x: 150.6, y: 130.11), controlPoint1: CGPoint(x: 149, y: 137.62), controlPoint2: CGPoint(x: 150.09, y: 133.94))
        iDPath.addCurve(to: CGPoint(x: 151.75, y: 129.24), controlPoint1: CGPoint(x: 150.67, y: 129.56), controlPoint2: CGPoint(x: 151.19, y: 129.17))
        iDPath.addCurve(to: CGPoint(x: 152.63, y: 130.37), controlPoint1: CGPoint(x: 152.31, y: 129.31), controlPoint2: CGPoint(x: 152.71, y: 129.82))
        iDPath.addCurve(to: CGPoint(x: 149.68, y: 142.29), controlPoint1: CGPoint(x: 152.1, y: 134.35), controlPoint2: CGPoint(x: 150.98, y: 138.12))
        iDPath.addCurve(to: CGPoint(x: 148.9, y: 142.98), controlPoint1: CGPoint(x: 149.56, y: 142.65), controlPoint2: CGPoint(x: 149.26, y: 142.91))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 135.53, y: 140.56))
        iDPath.addCurve(to: CGPoint(x: 134.95, y: 140.51), controlPoint1: CGPoint(x: 135.34, y: 140.6), controlPoint2: CGPoint(x: 135.14, y: 140.59))
        iDPath.addCurve(to: CGPoint(x: 134.38, y: 139.2), controlPoint1: CGPoint(x: 134.43, y: 140.3), controlPoint2: CGPoint(x: 134.17, y: 139.72))
        iDPath.addCurve(to: CGPoint(x: 136.72, y: 132.75), controlPoint1: CGPoint(x: 135.22, y: 137.15), controlPoint2: CGPoint(x: 136.1, y: 134.95))
        iDPath.addCurve(to: CGPoint(x: 137.63, y: 122), controlPoint1: CGPoint(x: 137.71, y: 129.27), controlPoint2: CGPoint(x: 138.01, y: 125.65))
        iDPath.addCurve(to: CGPoint(x: 137.29, y: 119.86), controlPoint1: CGPoint(x: 137.56, y: 121.3), controlPoint2: CGPoint(x: 137.43, y: 120.6))
        iDPath.addCurve(to: CGPoint(x: 136.89, y: 115.53), controlPoint1: CGPoint(x: 137.03, y: 118.46), controlPoint2: CGPoint(x: 136.76, y: 117.02))
        iDPath.addCurve(to: CGPoint(x: 139.18, y: 110.17), controlPoint1: CGPoint(x: 137.06, y: 113.58), controlPoint2: CGPoint(x: 137.87, y: 111.67))
        iDPath.addCurve(to: CGPoint(x: 140.63, y: 110.05), controlPoint1: CGPoint(x: 139.55, y: 109.74), controlPoint2: CGPoint(x: 140.19, y: 109.69))
        iDPath.addCurve(to: CGPoint(x: 140.74, y: 111.47), controlPoint1: CGPoint(x: 141.06, y: 110.41), controlPoint2: CGPoint(x: 141.11, y: 111.04))
        iDPath.addCurve(to: CGPoint(x: 138.93, y: 115.7), controlPoint1: CGPoint(x: 139.71, y: 112.66), controlPoint2: CGPoint(x: 139.06, y: 114.16))
        iDPath.addCurve(to: CGPoint(x: 139.3, y: 119.49), controlPoint1: CGPoint(x: 138.82, y: 116.92), controlPoint2: CGPoint(x: 139.06, y: 118.17))
        iDPath.addCurve(to: CGPoint(x: 139.67, y: 121.8), controlPoint1: CGPoint(x: 139.45, y: 120.24), controlPoint2: CGPoint(x: 139.59, y: 121.02))
        iDPath.addCurve(to: CGPoint(x: 138.7, y: 133.29), controlPoint1: CGPoint(x: 140.08, y: 125.7), controlPoint2: CGPoint(x: 139.75, y: 129.57))
        iDPath.addCurve(to: CGPoint(x: 136.28, y: 139.95), controlPoint1: CGPoint(x: 138.05, y: 135.59), controlPoint2: CGPoint(x: 137.15, y: 137.84))
        iDPath.addCurve(to: CGPoint(x: 135.53, y: 140.56), controlPoint1: CGPoint(x: 136.15, y: 140.28), controlPoint2: CGPoint(x: 135.86, y: 140.5))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 153.88, y: 142.11))
        iDPath.addCurve(to: CGPoint(x: 153.4, y: 142.1), controlPoint1: CGPoint(x: 153.72, y: 142.14), controlPoint2: CGPoint(x: 153.56, y: 142.14))
        iDPath.addCurve(to: CGPoint(x: 152.69, y: 140.86), controlPoint1: CGPoint(x: 152.86, y: 141.95), controlPoint2: CGPoint(x: 152.54, y: 141.39))
        iDPath.addCurve(to: CGPoint(x: 155.03, y: 130.32), controlPoint1: CGPoint(x: 153.64, y: 137.51), controlPoint2: CGPoint(x: 154.58, y: 133.92))
        iDPath.addCurve(to: CGPoint(x: 154.86, y: 118.74), controlPoint1: CGPoint(x: 155.48, y: 126.66), controlPoint2: CGPoint(x: 155.43, y: 122.76))
        iDPath.addLine(to: CGPoint(x: 154.85, y: 118.69))
        iDPath.addCurve(to: CGPoint(x: 151.53, y: 110.53), controlPoint1: CGPoint(x: 154.4, y: 115.5), controlPoint2: CGPoint(x: 153.98, y: 112.5))
        iDPath.addCurve(to: CGPoint(x: 143.94, y: 109.27), controlPoint1: CGPoint(x: 149.42, y: 108.82), controlPoint2: CGPoint(x: 146.51, y: 108.34))
        iDPath.addCurve(to: CGPoint(x: 142.62, y: 108.68), controlPoint1: CGPoint(x: 143.41, y: 109.46), controlPoint2: CGPoint(x: 142.82, y: 109.2))
        iDPath.addCurve(to: CGPoint(x: 143.23, y: 107.39), controlPoint1: CGPoint(x: 142.43, y: 108.16), controlPoint2: CGPoint(x: 142.7, y: 107.58))
        iDPath.addCurve(to: CGPoint(x: 152.83, y: 108.97), controlPoint1: CGPoint(x: 146.48, y: 106.21), controlPoint2: CGPoint(x: 150.16, y: 106.82))
        iDPath.addCurve(to: CGPoint(x: 156.88, y: 118.42), controlPoint1: CGPoint(x: 155.9, y: 111.44), controlPoint2: CGPoint(x: 156.4, y: 114.99))
        iDPath.addLine(to: CGPoint(x: 156.89, y: 118.46))
        iDPath.addCurve(to: CGPoint(x: 157.06, y: 130.56), controlPoint1: CGPoint(x: 157.48, y: 122.66), controlPoint2: CGPoint(x: 157.54, y: 126.73))
        iDPath.addCurve(to: CGPoint(x: 154.66, y: 141.4), controlPoint1: CGPoint(x: 156.6, y: 134.29), controlPoint2: CGPoint(x: 155.64, y: 137.97))
        iDPath.addCurve(to: CGPoint(x: 153.88, y: 142.11), controlPoint1: CGPoint(x: 154.56, y: 141.77), controlPoint2: CGPoint(x: 154.24, y: 142.04))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 131.74, y: 138.4))
        iDPath.addCurve(to: CGPoint(x: 131.14, y: 138.33), controlPoint1: CGPoint(x: 131.55, y: 138.43), controlPoint2: CGPoint(x: 131.34, y: 138.42))
        iDPath.addCurve(to: CGPoint(x: 130.6, y: 137.02), controlPoint1: CGPoint(x: 130.62, y: 138.12), controlPoint2: CGPoint(x: 130.38, y: 137.53))
        iDPath.addCurve(to: CGPoint(x: 132.41, y: 132.16), controlPoint1: CGPoint(x: 131.4, y: 135.19), controlPoint2: CGPoint(x: 131.97, y: 133.65))
        iDPath.addCurve(to: CGPoint(x: 133.67, y: 131.48), controlPoint1: CGPoint(x: 132.56, y: 131.63), controlPoint2: CGPoint(x: 133.13, y: 131.32))
        iDPath.addCurve(to: CGPoint(x: 134.37, y: 132.72), controlPoint1: CGPoint(x: 134.22, y: 131.63), controlPoint2: CGPoint(x: 134.53, y: 132.18))
        iDPath.addCurve(to: CGPoint(x: 132.48, y: 137.81), controlPoint1: CGPoint(x: 133.91, y: 134.29), controlPoint2: CGPoint(x: 133.31, y: 135.9))
        iDPath.addCurve(to: CGPoint(x: 131.74, y: 138.4), controlPoint1: CGPoint(x: 132.35, y: 138.12), controlPoint2: CGPoint(x: 132.06, y: 138.33))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 134.5, y: 128.9))
        iDPath.addCurve(to: CGPoint(x: 134.2, y: 128.92), controlPoint1: CGPoint(x: 134.4, y: 128.92), controlPoint2: CGPoint(x: 134.3, y: 128.93))
        iDPath.addCurve(to: CGPoint(x: 133.28, y: 127.82), controlPoint1: CGPoint(x: 133.63, y: 128.86), controlPoint2: CGPoint(x: 133.22, y: 128.37))
        iDPath.addCurve(to: CGPoint(x: 133.15, y: 121.68), controlPoint1: CGPoint(x: 133.49, y: 125.74), controlPoint2: CGPoint(x: 133.45, y: 123.67))
        iDPath.addCurve(to: CGPoint(x: 132.92, y: 120.27), controlPoint1: CGPoint(x: 133.08, y: 121.22), controlPoint2: CGPoint(x: 133, y: 120.74))
        iDPath.addCurve(to: CGPoint(x: 132.49, y: 115.28), controlPoint1: CGPoint(x: 132.64, y: 118.67), controlPoint2: CGPoint(x: 132.35, y: 117.01))
        iDPath.addCurve(to: CGPoint(x: 137.45, y: 105.77), controlPoint1: CGPoint(x: 132.78, y: 111.62), controlPoint2: CGPoint(x: 134.59, y: 108.15))
        iDPath.addCurve(to: CGPoint(x: 148.14, y: 102.65), controlPoint1: CGPoint(x: 140.33, y: 103.37), controlPoint2: CGPoint(x: 144.23, y: 102.23))
        iDPath.addCurve(to: CGPoint(x: 157.91, y: 107.95), controlPoint1: CGPoint(x: 152.06, y: 103.06), controlPoint2: CGPoint(x: 155.62, y: 105))
        iDPath.addCurve(to: CGPoint(x: 157.71, y: 109.36), controlPoint1: CGPoint(x: 158.25, y: 108.39), controlPoint2: CGPoint(x: 158.16, y: 109.02))
        iDPath.addCurve(to: CGPoint(x: 156.28, y: 109.17), controlPoint1: CGPoint(x: 157.26, y: 109.7), controlPoint2: CGPoint(x: 156.62, y: 109.61))
        iDPath.addCurve(to: CGPoint(x: 147.92, y: 104.64), controlPoint1: CGPoint(x: 154.32, y: 106.65), controlPoint2: CGPoint(x: 151.28, y: 105))
        iDPath.addCurve(to: CGPoint(x: 138.77, y: 107.3), controlPoint1: CGPoint(x: 144.57, y: 104.29), controlPoint2: CGPoint(x: 141.23, y: 105.25))
        iDPath.addCurve(to: CGPoint(x: 134.53, y: 115.44), controlPoint1: CGPoint(x: 136.33, y: 109.34), controlPoint2: CGPoint(x: 134.78, y: 112.3))
        iDPath.addCurve(to: CGPoint(x: 134.94, y: 119.93), controlPoint1: CGPoint(x: 134.41, y: 116.92), controlPoint2: CGPoint(x: 134.67, y: 118.38))
        iDPath.addCurve(to: CGPoint(x: 135.18, y: 121.39), controlPoint1: CGPoint(x: 135.02, y: 120.41), controlPoint2: CGPoint(x: 135.11, y: 120.9))
        iDPath.addCurve(to: CGPoint(x: 135.32, y: 128.02), controlPoint1: CGPoint(x: 135.5, y: 123.54), controlPoint2: CGPoint(x: 135.55, y: 125.78))
        iDPath.addCurve(to: CGPoint(x: 134.5, y: 128.9), controlPoint1: CGPoint(x: 135.27, y: 128.47), controlPoint2: CGPoint(x: 134.93, y: 128.82))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 128.34, y: 135.61))
        iDPath.addCurve(to: CGPoint(x: 127.75, y: 135.55), controlPoint1: CGPoint(x: 128.15, y: 135.64), controlPoint2: CGPoint(x: 127.94, y: 135.63))
        iDPath.addCurve(to: CGPoint(x: 127.19, y: 134.24), controlPoint1: CGPoint(x: 127.23, y: 135.34), controlPoint2: CGPoint(x: 126.97, y: 134.76))
        iDPath.addCurve(to: CGPoint(x: 128.71, y: 129.16), controlPoint1: CGPoint(x: 127.93, y: 132.46), controlPoint2: CGPoint(x: 128.42, y: 130.8))
        iDPath.addCurve(to: CGPoint(x: 128.94, y: 123.55), controlPoint1: CGPoint(x: 129.02, y: 127.38), controlPoint2: CGPoint(x: 129.1, y: 125.49))
        iDPath.addCurve(to: CGPoint(x: 128.53, y: 120.7), controlPoint1: CGPoint(x: 128.87, y: 122.61), controlPoint2: CGPoint(x: 128.7, y: 121.68))
        iDPath.addCurve(to: CGPoint(x: 128.07, y: 117.24), controlPoint1: CGPoint(x: 128.33, y: 119.58), controlPoint2: CGPoint(x: 128.13, y: 118.42))
        iDPath.addCurve(to: CGPoint(x: 131, y: 106.5), controlPoint1: CGPoint(x: 127.88, y: 113.49), controlPoint2: CGPoint(x: 128.92, y: 109.67))
        iDPath.addCurve(to: CGPoint(x: 151.35, y: 98.74), controlPoint1: CGPoint(x: 135.3, y: 99.94), controlPoint2: CGPoint(x: 143.67, y: 96.75))
        iDPath.addCurve(to: CGPoint(x: 152.08, y: 99.97), controlPoint1: CGPoint(x: 151.9, y: 98.88), controlPoint2: CGPoint(x: 152.23, y: 99.43))
        iDPath.addCurve(to: CGPoint(x: 150.83, y: 100.68), controlPoint1: CGPoint(x: 151.94, y: 100.5), controlPoint2: CGPoint(x: 151.38, y: 100.82))
        iDPath.addCurve(to: CGPoint(x: 132.72, y: 107.59), controlPoint1: CGPoint(x: 144, y: 98.91), controlPoint2: CGPoint(x: 136.55, y: 101.75))
        iDPath.addCurve(to: CGPoint(x: 130.12, y: 117.13), controlPoint1: CGPoint(x: 130.87, y: 110.41), controlPoint2: CGPoint(x: 129.94, y: 113.8))
        iDPath.addCurve(to: CGPoint(x: 130.55, y: 120.36), controlPoint1: CGPoint(x: 130.17, y: 118.2), controlPoint2: CGPoint(x: 130.35, y: 119.25))
        iDPath.addCurve(to: CGPoint(x: 130.98, y: 123.39), controlPoint1: CGPoint(x: 130.72, y: 121.34), controlPoint2: CGPoint(x: 130.9, y: 122.36))
        iDPath.addCurve(to: CGPoint(x: 130.73, y: 129.49), controlPoint1: CGPoint(x: 131.15, y: 125.5), controlPoint2: CGPoint(x: 131.07, y: 127.55))
        iDPath.addCurve(to: CGPoint(x: 129.08, y: 135), controlPoint1: CGPoint(x: 130.42, y: 131.28), controlPoint2: CGPoint(x: 129.88, y: 133.08))
        iDPath.addCurve(to: CGPoint(x: 128.34, y: 135.61), controlPoint1: CGPoint(x: 128.95, y: 135.32), controlPoint2: CGPoint(x: 128.66, y: 135.54))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 164.47, y: 136.38))
        iDPath.addCurve(to: CGPoint(x: 164.08, y: 136.38), controlPoint1: CGPoint(x: 164.34, y: 136.4), controlPoint2: CGPoint(x: 164.22, y: 136.41))
        iDPath.addCurve(to: CGPoint(x: 163.26, y: 135.22), controlPoint1: CGPoint(x: 163.53, y: 136.28), controlPoint2: CGPoint(x: 163.16, y: 135.76))
        iDPath.addCurve(to: CGPoint(x: 164.18, y: 124.12), controlPoint1: CGPoint(x: 163.97, y: 131.35), controlPoint2: CGPoint(x: 164.28, y: 127.61))
        iDPath.addCurve(to: CGPoint(x: 162.35, y: 111.39), controlPoint1: CGPoint(x: 164.03, y: 118.8), controlPoint2: CGPoint(x: 163.44, y: 114.76))
        iDPath.addCurve(to: CGPoint(x: 154.85, y: 102.3), controlPoint1: CGPoint(x: 161.12, y: 107.61), controlPoint2: CGPoint(x: 158.39, y: 104.3))
        iDPath.addCurve(to: CGPoint(x: 154.48, y: 100.93), controlPoint1: CGPoint(x: 154.36, y: 102.03), controlPoint2: CGPoint(x: 154.19, y: 101.41))
        iDPath.addCurve(to: CGPoint(x: 155.88, y: 100.56), controlPoint1: CGPoint(x: 154.76, y: 100.45), controlPoint2: CGPoint(x: 155.38, y: 100.29))
        iDPath.addCurve(to: CGPoint(x: 164.3, y: 110.78), controlPoint1: CGPoint(x: 159.84, y: 102.8), controlPoint2: CGPoint(x: 162.92, y: 106.53))
        iDPath.addCurve(to: CGPoint(x: 166.22, y: 124.06), controlPoint1: CGPoint(x: 165.46, y: 114.34), controlPoint2: CGPoint(x: 166.07, y: 118.55))
        iDPath.addCurve(to: CGPoint(x: 165.27, y: 135.57), controlPoint1: CGPoint(x: 166.33, y: 127.7), controlPoint2: CGPoint(x: 166.01, y: 131.57))
        iDPath.addCurve(to: CGPoint(x: 164.47, y: 136.38), controlPoint1: CGPoint(x: 165.2, y: 135.99), controlPoint2: CGPoint(x: 164.87, y: 136.3))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 125.18, y: 131.91))
        iDPath.addCurve(to: CGPoint(x: 124.71, y: 131.89), controlPoint1: CGPoint(x: 125.03, y: 131.94), controlPoint2: CGPoint(x: 124.87, y: 131.94))
        iDPath.addCurve(to: CGPoint(x: 123.99, y: 130.66), controlPoint1: CGPoint(x: 124.17, y: 131.75), controlPoint2: CGPoint(x: 123.84, y: 131.2))
        iDPath.addCurve(to: CGPoint(x: 124.58, y: 124.17), controlPoint1: CGPoint(x: 124.54, y: 128.62), controlPoint2: CGPoint(x: 124.74, y: 126.44))
        iDPath.addCurve(to: CGPoint(x: 124.15, y: 121), controlPoint1: CGPoint(x: 124.5, y: 123.12), controlPoint2: CGPoint(x: 124.33, y: 122.09))
        iDPath.addCurve(to: CGPoint(x: 123.65, y: 116.85), controlPoint1: CGPoint(x: 123.92, y: 119.66), controlPoint2: CGPoint(x: 123.68, y: 118.27))
        iDPath.addCurve(to: CGPoint(x: 133.53, y: 97.82), controlPoint1: CGPoint(x: 123.47, y: 109.38), controlPoint2: CGPoint(x: 127.25, y: 102.09))
        iDPath.addCurve(to: CGPoint(x: 134.95, y: 98.07), controlPoint1: CGPoint(x: 133.99, y: 97.5), controlPoint2: CGPoint(x: 134.63, y: 97.62))
        iDPath.addCurve(to: CGPoint(x: 134.7, y: 99.47), controlPoint1: CGPoint(x: 135.28, y: 98.53), controlPoint2: CGPoint(x: 135.16, y: 99.15))
        iDPath.addCurve(to: CGPoint(x: 125.7, y: 116.8), controlPoint1: CGPoint(x: 128.98, y: 103.36), controlPoint2: CGPoint(x: 125.53, y: 110))
        iDPath.addCurve(to: CGPoint(x: 126.17, y: 120.67), controlPoint1: CGPoint(x: 125.73, y: 118.08), controlPoint2: CGPoint(x: 125.94, y: 119.34))
        iDPath.addCurve(to: CGPoint(x: 126.62, y: 124.03), controlPoint1: CGPoint(x: 126.35, y: 121.76), controlPoint2: CGPoint(x: 126.54, y: 122.88))
        iDPath.addCurve(to: CGPoint(x: 125.97, y: 131.18), controlPoint1: CGPoint(x: 126.8, y: 126.52), controlPoint2: CGPoint(x: 126.58, y: 128.92))
        iDPath.addCurve(to: CGPoint(x: 125.18, y: 131.91), controlPoint1: CGPoint(x: 125.86, y: 131.56), controlPoint2: CGPoint(x: 125.55, y: 131.84))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 169.57, y: 121.04))
        iDPath.addCurve(to: CGPoint(x: 169.46, y: 121.06), controlPoint1: CGPoint(x: 169.53, y: 121.05), controlPoint2: CGPoint(x: 169.5, y: 121.06))
        iDPath.addCurve(to: CGPoint(x: 168.35, y: 120.16), controlPoint1: CGPoint(x: 168.9, y: 121.11), controlPoint2: CGPoint(x: 168.4, y: 120.71))
        iDPath.addCurve(to: CGPoint(x: 164.79, y: 106.18), controlPoint1: CGPoint(x: 167.9, y: 115.63), controlPoint2: CGPoint(x: 167.23, y: 110.44))
        iDPath.addCurve(to: CGPoint(x: 156.59, y: 98.33), controlPoint1: CGPoint(x: 162.95, y: 102.95), controlPoint2: CGPoint(x: 160.04, y: 100.16))
        iDPath.addCurve(to: CGPoint(x: 138.55, y: 97.4), controlPoint1: CGPoint(x: 151.08, y: 95.39), controlPoint2: CGPoint(x: 144.34, y: 95.04))
        iDPath.addCurve(to: CGPoint(x: 137.21, y: 96.86), controlPoint1: CGPoint(x: 138.03, y: 97.61), controlPoint2: CGPoint(x: 137.43, y: 97.37))
        iDPath.addCurve(to: CGPoint(x: 137.77, y: 95.55), controlPoint1: CGPoint(x: 137, y: 96.35), controlPoint2: CGPoint(x: 137.24, y: 95.76))
        iDPath.addCurve(to: CGPoint(x: 157.57, y: 96.56), controlPoint1: CGPoint(x: 144.12, y: 92.96), controlPoint2: CGPoint(x: 151.52, y: 93.33))
        iDPath.addCurve(to: CGPoint(x: 166.58, y: 105.2), controlPoint1: CGPoint(x: 161.35, y: 98.58), controlPoint2: CGPoint(x: 164.55, y: 101.65))
        iDPath.addCurve(to: CGPoint(x: 170.38, y: 119.96), controlPoint1: CGPoint(x: 169.21, y: 109.8), controlPoint2: CGPoint(x: 169.92, y: 115.23))
        iDPath.addCurve(to: CGPoint(x: 169.57, y: 121.04), controlPoint1: CGPoint(x: 170.44, y: 120.48), controlPoint2: CGPoint(x: 170.08, y: 120.94))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 169.76, y: 129.83))
        iDPath.addCurve(to: CGPoint(x: 169.5, y: 129.84), controlPoint1: CGPoint(x: 169.68, y: 129.84), controlPoint2: CGPoint(x: 169.59, y: 129.85))
        iDPath.addCurve(to: CGPoint(x: 168.54, y: 128.78), controlPoint1: CGPoint(x: 168.94, y: 129.81), controlPoint2: CGPoint(x: 168.51, y: 129.34))
        iDPath.addCurve(to: CGPoint(x: 168.62, y: 124.7), controlPoint1: CGPoint(x: 168.62, y: 127.45), controlPoint2: CGPoint(x: 168.64, y: 126.08))
        iDPath.addCurve(to: CGPoint(x: 169.62, y: 123.67), controlPoint1: CGPoint(x: 168.6, y: 124.14), controlPoint2: CGPoint(x: 169.05, y: 123.68))
        iDPath.addCurve(to: CGPoint(x: 170.66, y: 124.66), controlPoint1: CGPoint(x: 170.19, y: 123.66), controlPoint2: CGPoint(x: 170.65, y: 124.1))
        iDPath.addCurve(to: CGPoint(x: 170.58, y: 128.9), controlPoint1: CGPoint(x: 170.69, y: 126.09), controlPoint2: CGPoint(x: 170.67, y: 127.52))
        iDPath.addCurve(to: CGPoint(x: 169.76, y: 129.83), controlPoint1: CGPoint(x: 170.56, y: 129.36), controlPoint2: CGPoint(x: 170.21, y: 129.74))
        iDPath.close()
        iDPath.move(to: CGPoint(x: 159.08, y: 140.09))
        iDPath.addCurve(to: CGPoint(x: 157.87, y: 139.3), controlPoint1: CGPoint(x: 158.53, y: 140.2), controlPoint2: CGPoint(x: 157.98, y: 139.84))
        iDPath.addCurve(to: CGPoint(x: 157.99, y: 138.48), controlPoint1: CGPoint(x: 157.82, y: 139.04), controlPoint2: CGPoint(x: 157.87, y: 138.89))
        iDPath.addCurve(to: CGPoint(x: 159.26, y: 133.06), controlPoint1: CGPoint(x: 158.22, y: 137.73), controlPoint2: CGPoint(x: 158.82, y: 135.75))
        iDPath.addCurve(to: CGPoint(x: 159.74, y: 124.04), controlPoint1: CGPoint(x: 159.72, y: 130.23), controlPoint2: CGPoint(x: 159.9, y: 127.02))
        iDPath.addCurve(to: CGPoint(x: 158.99, y: 115.94), controlPoint1: CGPoint(x: 159.57, y: 120.62), controlPoint2: CGPoint(x: 159.31, y: 117.82))
        iDPath.addCurve(to: CGPoint(x: 158.27, y: 113.08), controlPoint1: CGPoint(x: 158.65, y: 114.01), controlPoint2: CGPoint(x: 158.28, y: 113.08))
        iDPath.addCurve(to: CGPoint(x: 158.84, y: 111.77), controlPoint1: CGPoint(x: 158.06, y: 112.56), controlPoint2: CGPoint(x: 158.31, y: 111.98))
        iDPath.addCurve(to: CGPoint(x: 160.17, y: 112.31), controlPoint1: CGPoint(x: 159.36, y: 111.56), controlPoint2: CGPoint(x: 159.96, y: 111.8))
        iDPath.addCurve(to: CGPoint(x: 161.01, y: 115.61), controlPoint1: CGPoint(x: 160.19, y: 112.36), controlPoint2: CGPoint(x: 160.63, y: 113.43))
        iDPath.addCurve(to: CGPoint(x: 161.79, y: 123.94), controlPoint1: CGPoint(x: 161.34, y: 117.57), controlPoint2: CGPoint(x: 161.61, y: 120.45))
        iDPath.addCurve(to: CGPoint(x: 161.28, y: 133.38), controlPoint1: CGPoint(x: 161.95, y: 127.06), controlPoint2: CGPoint(x: 161.77, y: 130.41))
        iDPath.addCurve(to: CGPoint(x: 159.95, y: 139.05), controlPoint1: CGPoint(x: 160.82, y: 136.2), controlPoint2: CGPoint(x: 160.19, y: 138.27))
        iDPath.addCurve(to: CGPoint(x: 159.89, y: 139.27), controlPoint1: CGPoint(x: 159.92, y: 139.15), controlPoint2: CGPoint(x: 159.9, y: 139.23))
        iDPath.addCurve(to: CGPoint(x: 159.08, y: 140.09), controlPoint1: CGPoint(x: 159.82, y: 139.67), controlPoint2: CGPoint(x: 159.51, y: 140))
        iDPath.close()
        context?.saveGState()
        iDPath.addClip()
        context?.drawLinearGradient(gradient2, start: CGPoint(x: 146.62, y: 89.49), end: CGPoint(x: 146.62, y: 143), options: CGGradientDrawingOptions())
        context?.restoreGState()




        //// Text Drawing
        let textRect = CGRect(x: 108.83, y: 150.37, width: 76.51, height: 25.21)
        let textPath = UIBezierPath(rect: textRect)
        StyleKitName.color.setFill()
        textPath.fill()
        let textTextContent = NSString(string: "Congrats!")
        context?.saveGState()
        context?.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: (shadow.shadowColor as! UIColor).cgColor)
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center

        let textFontAttributes = [NSFontAttributeName: UIFont.italicSystemFont(ofSize: UIFont.labelFontSize), NSForegroundColorAttributeName: UIColor.black, NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        let textTextRect: CGRect = CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight)
        context?.saveGState()
        context?.clip(to: textRect)
        textTextContent.draw(in: textTextRect, withAttributes: textFontAttributes)
        context?.restoreGState()
        
        ////// Text Text Inner Shadow
        context?.saveGState()
        context?.clip(to: textRect)
        context?.setShadow(offset: CGSize.zero, blur: 0)
        context?.setAlpha((shadow.shadowColor as! UIColor).cgColor.alpha)
        context?.beginTransparencyLayer(auxiliaryInfo: nil)
        let textOpaqueTextShadow = (shadow.shadowColor as! UIColor).withAlphaComponent(1)
        context?.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: textOpaqueTextShadow.cgColor)
        context?.setBlendMode(.sourceOut)
        context?.beginTransparencyLayer(auxiliaryInfo: nil)

        textOpaqueTextShadow.setFill()

        let textInnerShadowFontAttributes = [NSFontAttributeName: UIFont.italicSystemFont(ofSize: UIFont.labelFontSize), NSForegroundColorAttributeName: (shadow.shadowColor as! UIColor), NSParagraphStyleAttributeName: textStyle]
        textTextContent.draw(in: textTextRect, withAttributes: textInnerShadowFontAttributes)

        context?.endTransparencyLayer()
        context?.endTransparencyLayer()
        context?.restoreGState()


        context?.restoreGState()
    }

    public class func drawCanvas1() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let color10 = UIColor(red: 0.667, green: 0.667, blue: 0.667, alpha: 0.572)

        //// Gradient Declarations
        let gradient2 = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKitName.red.cgColor, StyleKitName.red.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor, StyleKitName.color.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor] as CFArray, locations: [0.01, 1, 1, 1, 1])!

        //// Variable Declarations
        let pressed = true

        //// Rectangle Drawing
        let rectanglePath = UIBezierPath(roundedRect: CGRect(x: 1, y: 0, width: 279, height: 30), cornerRadius: 11)
        context?.saveGState()
        rectanglePath.addClip()
        context?.drawLinearGradient(gradient2, start: CGPoint(x: 140.5, y: -0), end: CGPoint(x: 140.5, y: 30), options: CGGradientDrawingOptions())
        context?.restoreGState()


        //// Press Me! Drawing
        let pressMeRect = CGRect(x: 48, y: 1, width: 186, height: 27)
        let pressMeTextContent = NSString(string: "Press Me!")
        let pressMeStyle = NSMutableParagraphStyle()
        pressMeStyle.alignment = .center

        let pressMeFontAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 21), NSForegroundColorAttributeName: UIColor.black, NSParagraphStyleAttributeName: pressMeStyle]

        let pressMeTextHeight: CGFloat = pressMeTextContent.boundingRect(with: CGSize(width: pressMeRect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: pressMeFontAttributes, context: nil).size.height
        context?.saveGState()
        context?.clip(to: pressMeRect)
        pressMeTextContent.draw(in: CGRect(x: pressMeRect.minX, y: pressMeRect.minY + (pressMeRect.height - pressMeTextHeight) / 2, width: pressMeRect.width, height: pressMeTextHeight), withAttributes: pressMeFontAttributes)
        context?.restoreGState()


        if (pressed) {
            //// Rectangle 2 Drawing
            let rectangle2Path = UIBezierPath(roundedRect: CGRect(x: 1, y: 0, width: 279, height: 30), cornerRadius: 11)
            color10.setFill()
            rectangle2Path.fill()
        }
    }

    public class func drawCanvas2() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()

        //// Color Declarations
        let color2 = UIColor(red: 0.011, green: 0.047, blue: 0.976, alpha: 1.000)

        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 120, y: 111))
        bezierPath.addCurve(to: CGPoint(x: 80.65, y: 186), controlPoint1: CGPoint(x: 85.02, y: 178.39), controlPoint2: CGPoint(x: 80.65, y: 186))
        bezierPath.addLine(to: CGPoint(x: 73, y: 163.17))
        bezierPath.addLine(to: CGPoint(x: 101.42, y: 111))
        bezierPath.lineCapStyle = .round;

        bezierPath.lineJoinStyle = .round;

        StyleKitName.red.setFill()
        bezierPath.fill()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 120, y: 111))
        bezier2Path.addCurve(to: CGPoint(x: 157, y: 186), controlPoint1: CGPoint(x: 140, y: 152), controlPoint2: CGPoint(x: 157, y: 186))
        bezier2Path.addLine(to: CGPoint(x: 167, y: 165))
        bezier2Path.addLine(to: CGPoint(x: 138, y: 111))
        color2.setFill()
        bezier2Path.fill()


        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 69, y: 17, width: 108, height: 113))
        StyleKitName.color.setFill()
        ovalPath.fill()


        //// Text Drawing
        let textRect = CGRect(x: 92, y: 37, width: 64, height: 27)
        let textTextContent = NSString(string: " Pay ")
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .left

        let textFontAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 22), NSForegroundColorAttributeName: UIColor.black, NSParagraphStyleAttributeName: textStyle]

        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        context?.saveGState()
        context?.clip(to: textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context?.restoreGState()


        //// Text 2 Drawing
        let text2Rect = CGRect(x: 90, y: 92, width: 66, height: 27)
        let text2TextContent = NSString(string: "Congrats! ")
        let text2Style = NSMutableParagraphStyle()
        text2Style.alignment = .left

        let text2FontAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 15), NSForegroundColorAttributeName: UIColor.black, NSParagraphStyleAttributeName: text2Style]

        let text2TextHeight: CGFloat = text2TextContent.boundingRect(with: CGSize(width: text2Rect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: text2FontAttributes, context: nil).size.height
        context?.saveGState()
        context?.clip(to: text2Rect)
        text2TextContent.draw(in: CGRect(x: text2Rect.minX, y: text2Rect.minY + (text2Rect.height - text2TextHeight) / 2, width: text2Rect.width, height: text2TextHeight), withAttributes: text2FontAttributes)
        context?.restoreGState()


        //// Text 3 Drawing
        let text3Rect = CGRect(x: 73, y: 64, width: 101, height: 28)
        let text3TextContent = NSString(string: "(In App) ")
        let text3Style = NSMutableParagraphStyle()
        text3Style.alignment = .center

        let text3FontAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: UIFont.smallSystemFontSize), NSForegroundColorAttributeName: UIColor.black, NSParagraphStyleAttributeName: text3Style]

        let text3TextHeight: CGFloat = text3TextContent.boundingRect(with: CGSize(width: text3Rect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: text3FontAttributes, context: nil).size.height
        context?.saveGState()
        context?.clip(to: text3Rect)
        text3TextContent.draw(in: CGRect(x: text3Rect.minX, y: text3Rect.minY + (text3Rect.height - text3TextHeight) / 2, width: text3Rect.width, height: text3TextHeight), withAttributes: text3FontAttributes)
        context?.restoreGState()
    }

    public class func drawCanvas3() {

        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 43, y: 22, width: 162, height: 169))
        StyleKitName.color.setFill()
        ovalPath.fill()


        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: 68, y: 52, width: 35, height: 34))
        UIColor.black.setFill()
        oval2Path.fill()


        //// Oval 3 Drawing
        let oval3Path = UIBezierPath(ovalIn: CGRect(x: 147, y: 52, width: 35, height: 34))
        UIColor.black.setFill()
        oval3Path.fill()


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 57, y: 116))
        bezierPath.addCurve(to: CGPoint(x: 62.32, y: 144.81), controlPoint1: CGPoint(x: 57.51, y: 116), controlPoint2: CGPoint(x: 55.78, y: 131.4))
        bezierPath.addCurve(to: CGPoint(x: 71.98, y: 158.5), controlPoint1: CGPoint(x: 64.79, y: 149.88), controlPoint2: CGPoint(x: 67.95, y: 154.74))
        bezierPath.addCurve(to: CGPoint(x: 108, y: 174), controlPoint1: CGPoint(x: 83.07, y: 168.84), controlPoint2: CGPoint(x: 101.62, y: 174))
        bezierPath.addCurve(to: CGPoint(x: 124, y: 174), controlPoint1: CGPoint(x: 111.48, y: 174), controlPoint2: CGPoint(x: 117.68, y: 174))
        bezierPath.addCurve(to: CGPoint(x: 145, y: 174), controlPoint1: CGPoint(x: 131.16, y: 174), controlPoint2: CGPoint(x: 138.61, y: 174))
        bezierPath.addCurve(to: CGPoint(x: 160, y: 170), controlPoint1: CGPoint(x: 146.8, y: 174), controlPoint2: CGPoint(x: 154.93, y: 172.3))
        bezierPath.addCurve(to: CGPoint(x: 176, y: 158), controlPoint1: CGPoint(x: 166.85, y: 166.9), controlPoint2: CGPoint(x: 171.22, y: 162.52))
        bezierPath.addCurve(to: CGPoint(x: 191, y: 116), controlPoint1: CGPoint(x: 191.33, y: 143.51), controlPoint2: CGPoint(x: 191, y: 116))
        bezierPath.lineCapStyle = .round;

        bezierPath.lineJoinStyle = .round;

        UIColor.black.setStroke()
        bezierPath.lineWidth = 6
        bezierPath.stroke()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        UIColor.black.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()


        //// Polygon Drawing
        let polygonPath = UIBezierPath()
        polygonPath.move(to: CGPoint(x: 124, y: 85))
        polygonPath.addLine(to: CGPoint(x: 138.12, y: 106))
        polygonPath.addLine(to: CGPoint(x: 124, y: 127))
        polygonPath.addLine(to: CGPoint(x: 109.88, y: 106))
        polygonPath.close()
        UIColor.black.setFill()
        polygonPath.fill()
    }

    public class func drawCanvas4() {

        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        bezier2Path.move(to: CGPoint(x: 20.6, y: 51.62))
        bezier2Path.addCurve(to: CGPoint(x: 9.5, y: 43.5), controlPoint1: CGPoint(x: 10.81, y: 44.08), controlPoint2: CGPoint(x: 9.5, y: 43.5))
        bezier2Path.addLine(to: CGPoint(x: 25.17, y: 72.5))
        bezier2Path.addLine(to: CGPoint(x: 42.5, y: 43.5))
        bezier2Path.addLine(to: CGPoint(x: 30.5, y: 51.5))
        UIColor.black.setFill()
        bezier2Path.fill()
        UIColor.black.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()


        //// Rectangle 2 Drawing
        let rectangle2Path = UIBezierPath(rect: CGRect(x: 20, y: 17, width: 11, height: 35))
        UIColor.black.setFill()
        rectangle2Path.fill()
    }

    public class func drawCanvas5() {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()


        //// Gradient Declarations
        let gradient2 = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKitName.red.cgColor, StyleKitName.red.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor, StyleKitName.color.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor] as CFArray, locations: [0.01, 1, 1, 1, 1])!

        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = StyleKitName.color.withAlphaComponent(0.63 * StyleKitName.color.cgColor.alpha)
        shadow.shadowOffset = CGSize(width: 2.1, height: 2.1)
        shadow.shadowBlurRadius = 5

        //// Rectangle Drawing
        context?.saveGState()
        context?.translateBy(x: -3.35, y: -3.26)

        let rectanglePath = UIBezierPath(rect: CGRect(x: 3.35, y: 3.26, width: 253, height: 196))
        context?.saveGState()
        rectanglePath.addClip()
        context?.drawLinearGradient(gradient2, start: CGPoint(x: 129.85, y: 3.26), end: CGPoint(x: 129.85, y: 199.26), options: CGGradientDrawingOptions())
        context?.restoreGState()

        ////// Rectangle Inner Shadow
        context?.saveGState()
        context?.clip(to: rectanglePath.bounds)
        context?.setShadow(offset: CGSize.zero, blur: 0)
        context?.setAlpha((shadow.shadowColor as! UIColor).cgColor.alpha)
        context?.beginTransparencyLayer(auxiliaryInfo: nil)
        let rectangleOpaqueShadow = (shadow.shadowColor as! UIColor).withAlphaComponent(1)
        context?.setShadow(offset: shadow.shadowOffset, blur: shadow.shadowBlurRadius, color: rectangleOpaqueShadow.cgColor)
        context?.setBlendMode(.sourceOut)
        context?.beginTransparencyLayer(auxiliaryInfo: nil)

        rectangleOpaqueShadow.setFill()
        rectanglePath.fill()

        context?.endTransparencyLayer()
        context?.endTransparencyLayer()
        context?.restoreGState()


        context?.restoreGState()


        //// Oval Drawing
        let ovalPath = UIBezierPath(ovalIn: CGRect(x: 45, y: 13, width: 162, height: 169))
        StyleKitName.color.setFill()
        ovalPath.fill()


        //// Oval 2 Drawing
        let oval2Path = UIBezierPath(ovalIn: CGRect(x: 70, y: 43, width: 35, height: 34))
        UIColor.black.setFill()
        oval2Path.fill()


        //// Oval 3 Drawing
        let oval3Path = UIBezierPath(ovalIn: CGRect(x: 149, y: 43, width: 35, height: 34))
        UIColor.black.setFill()
        oval3Path.fill()


        //// Bezier Drawing
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 59, y: 107))
        bezierPath.addCurve(to: CGPoint(x: 64.32, y: 135.81), controlPoint1: CGPoint(x: 59.51, y: 107), controlPoint2: CGPoint(x: 57.78, y: 122.4))
        bezierPath.addCurve(to: CGPoint(x: 73.98, y: 149.5), controlPoint1: CGPoint(x: 66.79, y: 140.88), controlPoint2: CGPoint(x: 69.95, y: 145.74))
        bezierPath.addCurve(to: CGPoint(x: 110, y: 165), controlPoint1: CGPoint(x: 85.07, y: 159.84), controlPoint2: CGPoint(x: 103.62, y: 165))
        bezierPath.addCurve(to: CGPoint(x: 126, y: 165), controlPoint1: CGPoint(x: 113.48, y: 165), controlPoint2: CGPoint(x: 119.68, y: 165))
        bezierPath.addCurve(to: CGPoint(x: 147, y: 165), controlPoint1: CGPoint(x: 133.16, y: 165), controlPoint2: CGPoint(x: 140.61, y: 165))
        bezierPath.addCurve(to: CGPoint(x: 162, y: 161), controlPoint1: CGPoint(x: 148.8, y: 165), controlPoint2: CGPoint(x: 156.93, y: 163.3))
        bezierPath.addCurve(to: CGPoint(x: 178, y: 149), controlPoint1: CGPoint(x: 168.85, y: 157.9), controlPoint2: CGPoint(x: 173.22, y: 153.52))
        bezierPath.addCurve(to: CGPoint(x: 193, y: 107), controlPoint1: CGPoint(x: 193.33, y: 134.51), controlPoint2: CGPoint(x: 193, y: 107))
        bezierPath.lineCapStyle = .round;

        bezierPath.lineJoinStyle = .round;

        UIColor.black.setStroke()
        bezierPath.lineWidth = 6
        bezierPath.stroke()


        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        UIColor.black.setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()


        //// Polygon Drawing
        let polygonPath = UIBezierPath()
        polygonPath.move(to: CGPoint(x: 126, y: 76))
        polygonPath.addLine(to: CGPoint(x: 140.12, y: 97))
        polygonPath.addLine(to: CGPoint(x: 126, y: 118))
        polygonPath.addLine(to: CGPoint(x: 111.88, y: 97))
        polygonPath.close()
        UIColor.black.setFill()
        polygonPath.fill()
    }

}



extension UIColor {
    func colorWithHue(_ newHue: CGFloat) -> UIColor {
        var saturation: CGFloat = 1.0, brightness: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getHue(nil, saturation: &saturation, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: newHue, saturation: saturation, brightness: brightness, alpha: alpha)
    }
    func colorWithSaturation(_ newSaturation: CGFloat) -> UIColor {
        var hue: CGFloat = 1.0, brightness: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getHue(&hue, saturation: nil, brightness: &brightness, alpha: &alpha)
        return UIColor(hue: hue, saturation: newSaturation, brightness: brightness, alpha: alpha)
    }
    func colorWithBrightness(_ newBrightness: CGFloat) -> UIColor {
        var hue: CGFloat = 1.0, saturation: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getHue(&hue, saturation: &saturation, brightness: nil, alpha: &alpha)
        return UIColor(hue: hue, saturation: saturation, brightness: newBrightness, alpha: alpha)
    }
    func colorWithAlpha(_ newAlpha: CGFloat) -> UIColor {
        var hue: CGFloat = 1.0, saturation: CGFloat = 1.0, brightness: CGFloat = 1.0
        self.getHue(&hue, saturation: &saturation, brightness: &brightness, alpha: nil)
        return UIColor(hue: hue, saturation: saturation, brightness: brightness, alpha: newAlpha)
    }
    func colorWithHighlight(_ highlight: CGFloat) -> UIColor {
        var red: CGFloat = 1.0, green: CGFloat = 1.0, blue: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return UIColor(red: red * (1-highlight) + highlight, green: green * (1-highlight) + highlight, blue: blue * (1-highlight) + highlight, alpha: alpha * (1-highlight) + highlight)
    }
    func colorWithShadow(_ shadow: CGFloat) -> UIColor {
        var red: CGFloat = 1.0, green: CGFloat = 1.0, blue: CGFloat = 1.0, alpha: CGFloat = 1.0
        self.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return UIColor(red: red * (1-shadow), green: green * (1-shadow), blue: blue * (1-shadow), alpha: alpha * (1-shadow) + shadow)
    }
    func blendedColorWithFraction(_ fraction: CGFloat, ofColor color: UIColor) -> UIColor {
        var r1: CGFloat = 1.0, g1: CGFloat = 1.0, b1: CGFloat = 1.0, a1: CGFloat = 1.0
        var r2: CGFloat = 1.0, g2: CGFloat = 1.0, b2: CGFloat = 1.0, a2: CGFloat = 1.0

        self.getRed(&r1, green: &g1, blue: &b1, alpha: &a1)
        color.getRed(&r2, green: &g2, blue: &b2, alpha: &a2)

        return UIColor(red: r1 * (1 - fraction) + r2 * fraction,
            green: g1 * (1 - fraction) + g2 * fraction,
            blue: b1 * (1 - fraction) + b2 * fraction,
            alpha: a1 * (1 - fraction) + a2 * fraction);
    }
}
