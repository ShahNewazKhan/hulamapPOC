//
//  ViewController.swift
//  TestApp
//
//  Created by Shah Newaz Khan on 2015-08-23.
//  Copyright (c) 2015 Shah Newaz Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sv = UIScrollView(frame: self.view.bounds)
        sv.autoresizingMask = .FlexibleWidth | .FlexibleHeight
        //sv.pagingEnabled = true
        
        self.view.addSubview(sv)
        sv.frame.origin = CGPointMake(30,30)
        sv.backgroundColor = UIColor.whiteColor()
        
        var x : CGFloat = 10
        
        for i in 0 ..< 30 {
            let lab = UILabel()
            lab.text = "This is label \(i+1)"
            lab.sizeToFit()
            lab.frame.origin = CGPointMake(x,10)
            sv.addSubview(lab)
            x += lab.bounds.size.width + 10
        }
        
        var sz = sv.bounds.size
        
        sz.width = x
        sv.contentSize = sz //*
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

