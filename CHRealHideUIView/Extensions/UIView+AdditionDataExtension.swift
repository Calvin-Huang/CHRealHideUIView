//
//  UIView+AdditionDataExtension.swift
//  CHRealHideUIView
//
//  Created by Calvin on 7/30/16.
//  Copyright © 2016 CapsLock. All rights reserved.
//

import UIKit

// Declare a global var to produce a unique address as the assoc object handle
var AssociatedObjectHandle: UInt8 = 0

extension UIView {
    var data: AnyObject? {
        set {
            objc_setAssociatedObject(self, &AssociatedObjectHandle, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        
        get {
            return objc_getAssociatedObject(self, &AssociatedObjectHandle) as AnyObject?
        }
    }
}
