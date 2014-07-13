//
//  MyCustomView.swift
//  CutsomViewInIB
//
//  Created by Alaysh on 7/13/14.
//  Copyright (c) 2014 Alaysh. All rights reserved.
//

import UIKit
@IBDesignable
class MyCustomView: UIView {
    @IBInspectable var lineWidth: CGFloat = 1.0
    @IBInspectable var fillColor: UIColor = UIColor.orangeColor()
    init(frame: CGRect) {
        super.init(frame: frame)
        // Initialization code
    }

    override func drawRect(rect: CGRect)
    {
        var context: CGContextRef = UIGraphicsGetCurrentContext()
        var myFrame: CGRect = bounds
        CGContextSetLineWidth(context, lineWidth)
        CGRectInset(myFrame, 5, 5)
        fillColor.set()
        UIRectFrame(myFrame)
    }
}
