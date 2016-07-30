//
//  UIViewController+RealHideViewExtension.swift
//  CHRealHideUIView
//
//  Created by Calvin on 7/30/16.
//  Copyright © 2016 CapsLock. All rights reserved.
//

import UIKit

public extension UIViewController {
    public func hide(view: UIView) {
        var constantValues: [String: CGFloat] = [:]
        
        view.constraints
            .filter {
                return $0.firstAttribute == .Height || $0.firstAttribute == .Width
            }
            .forEach {
                constantValues[String(format: "%p", $0)] = $0.constant
                $0.constant = 0
            }
        
        view.superview?.constraints
            .filter{
                guard let firstItem = $0.firstItem as? UIView else {
                    return false
                }
                
                return firstItem == view
            }
            .forEach {
                constantValues[String(format: "%p", $0)] = $0.constant
                $0.constant = 0
            }
        
        view.data = constantValues
        view.hidden = true
    }
    
    public func show(view: UIView) {
        guard let constantValues = view.data as? [String: CGFloat] else {
            return
        }
        
        view.constraints
            .filter {
                return $0.firstAttribute == .Height || $0.firstAttribute == .Width
            }
            .forEach {
                guard let constant = constantValues[String(format: "%p", $0)] else {
                    return
                }
                
                $0.constant = constant
            }
        
        view.superview?.constraints
            .filter{
                guard let firstItem = $0.firstItem as? UIView else {
                    return false
                }
                
                return firstItem == view
            }
            .forEach {
                guard let constant = constantValues[String(format: "%p", $0)] else {
                    return
                }
                
                $0.constant = constant
            }
        
        view.hidden = false
    }
}