//
//  UIView+AdditionDataExtension.swift
//  CHRealHideUIView
//
//  Created by Calvin on 7/30/16.
//  Copyright © 2016 CapsLock. All rights reserved.
//

import UIKit

// Declare a global var to produce a unique address as the assoc object handle
var dataKey: UnsafePointer<Any>?

extension UIView {
    var data: AnyObject? {
        set {
            if dataKey == nil {
                dataKey = UnsafePointer(bitPattern: String(format: "%p", self).hashValue)
            }
            
            guard let dataKey = dataKey else {
                return
            }
            
            objc_setAssociatedObject(self, dataKey, newValue, .OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
        
        get {
            guard let dataKey = dataKey else {
                return nil
            }
            
            return objc_getAssociatedObject(self, dataKey) as AnyObject?
        }
    }
}
