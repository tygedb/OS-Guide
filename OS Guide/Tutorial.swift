//
//  Tutorial.swift
//  OS Guide
//
//  Created by Tyge Bellinger on 5/18/16.
//  Copyright © 2016 Tyge Bellinger. All rights reserved.
//
//DONE
import UIKit


enum tutorialType {
    case delivered
    case electronic
    
}

func ==(lhs: tutorialType, rhs: tutorialType) -> Bool {
    switch(lhs, rhs) {
    case (.delivered( _), .delivered( _)):
        return true
    case (.electronic, .electronic):
        return true
    default: return false
    }
}

struct Tutorial1 {
    let image: UIImage?
    let title: String
    let price: NSDecimalNumber
    let description: String
    var swagType: tutorialType
    
    init(image: UIImage?, title: String, price: NSDecimalNumber, type: tutorialType, description: String) {
        self.image = image
        self.title = title
        self.price = price
        self.swagType = type
        self.description = description
    }
    
    var priceString: String {
        let dollarFormatter: NumberFormatter = NumberFormatter()
        dollarFormatter.minimumFractionDigits = 2;
        dollarFormatter.maximumFractionDigits = 2;
        return dollarFormatter.string(from: price)!
    }
}
