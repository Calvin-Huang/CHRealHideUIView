//
//  ViewController.swift
//  CHRealHideUIView
//
//  Created by Calvin on 7/30/16.
//  Copyright © 2016 CapsLock. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var blueButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func toggleHideAndShowButtonClicked(_: AnyObject) {
        if (redView.isHidden) {
            show(redView)
        } else {
            hide(redView)
        }
        
        if (blueButton.isHidden) {
            show(blueButton)
        } else {
            hide(blueButton)
        }
        
        if (imageView.isHidden) {
            show(imageView)
        } else {
            hide(imageView)
        }
    }
}

