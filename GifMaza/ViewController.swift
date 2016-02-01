//
//  ViewController.swift
//  GifMaza
//
//  Created by Kanchiraju on 1/31/16.
//  Copyright © 2016 Kanchy. All rights reserved.
//

import UIKit
import Gifu

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: AnimatableImageView!
    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       //let strImg : String = "http://media2.giphy.com/media/zdCxtXBSdwLXG/200.gif"
       //let url: NSURL = NSURL(string: strImg)!
       //imageView.image = UIImage.animatedImageWithAnimatedGIFURL(url)
        
       // headerView.layer.backgroundColor = UIColor.colorFromRGB(47, g: 124, b: 100).CGColor
        headerView.layer.shadowOffset = CGSizeMake(0,5)
        headerView.layer.shadowOpacity = 0.5
        headerView.layer.shadowRadius = 1
        headerView.layer.cornerRadius = 6
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

