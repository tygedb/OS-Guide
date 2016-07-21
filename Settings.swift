//
//  Settings.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/20/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//

import UIKit

class Settings: UIButton {


    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        //// General Declarations
        let context = UIGraphicsGetCurrentContext()
        
        
        //// Gradient Declarations
        let redGradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: [StyleKitName.red.cgColor, StyleKitName.red.blendedColorWithFraction(0.5, ofColor: StyleKitName.color).cgColor, StyleKitName.color.cgColor, StyleKitName.color.blendedColorWithFraction(0.5, ofColor: StyleKitName.ellipse1Color).cgColor, StyleKitName.ellipse1Color.cgColor], locations: [0.01, 1, 1, 1, 1])!
        
        //// Shadow Declarations
        let shadow = NSShadow()
        shadow.shadowColor = StyleKitName.color.withAlphaComponent(0.63 * StyleKitName.color.cgColor.alpha)
        shadow.shadowOffset = CGSize(width: 2.1, height: 2.1)
        shadow.shadowBlurRadius = 5
        
        //// Rectangle Drawing
        context?.saveGState()
        context?.translate(x: -3.35, y: -3.26)
        
        let rectanglePath = UIBezierPath(rect: CGRect(x: 3.35, y: 3.26, width: 253, height: 196))
        context?.saveGState()
        rectanglePath.addClip()
        context?.drawLinearGradient(redGradient, start: CGPoint(x: 129.85, y: 3.26), end: CGPoint(x: 129.85, y: 199.26), options: CGGradientDrawingOptions())
        context?.restoreGState()
        
        ////// Rectangle Inner Shadow
        context?.saveGState()
        context?.clipTo(rectanglePath.bounds)
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
        
        
        //// Bezier 2 Drawing
        let bezier2Path = UIBezierPath()
        UIColor.black().setStroke()
        bezier2Path.lineWidth = 1
        bezier2Path.stroke()
        
        
        //// Text Drawing
        let textRect = CGRect(x: 0, y: 3, width: 71, height: 21)
        let textTextContent = NSString(string: "Settings")
        let textStyle = NSMutableParagraphStyle()
        textStyle.alignment = .center
        
        let textFontAttributes = [NSFontAttributeName: UIFont.systemFont(ofSize: UIFont.smallSystemFontSize()), NSForegroundColorAttributeName: UIColor.black(), NSParagraphStyleAttributeName: textStyle]
        
        let textTextHeight: CGFloat = textTextContent.boundingRect(with: CGSize(width: textRect.width, height: CGFloat.infinity), options: NSStringDrawingOptions.usesLineFragmentOrigin, attributes: textFontAttributes, context: nil).size.height
        context?.saveGState()
        context?.clipTo(textRect)
        textTextContent.draw(in: CGRect(x: textRect.minX, y: textRect.minY + (textRect.height - textTextHeight) / 2, width: textRect.width, height: textTextHeight), withAttributes: textFontAttributes)
        context?.restoreGState()


   }
    
    

    

}
