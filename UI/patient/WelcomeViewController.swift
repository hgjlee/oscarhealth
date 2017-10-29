//
//  ViewController.swift
//  patient
//
//  Created by 卢晓航 on 2017/10/16.
//  Copyright © 2017年 卢晓航. All rights reserved.
//

import UIKit
import SnapKit

class WelcomeViewController: UIViewController {

    @IBOutlet var background: UIView!
    @IBOutlet weak var welcomeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        background.backgroundColor = UIColor.white
        //background.backgroundColor = UIColor(red: 249/255, green: 205/255, blue: 173/255, alpha: 1)
        var imageNames = ["1.png","2.png","3.png","4.png","5.png","6.png"]
        var images = [UIImage]()
        for i in 0..<imageNames.count{
            images.append(UIImage(named:imageNames[i])!)
        }
        welcomeImage.animationImages = images
        welcomeImage.animationDuration = 2
        welcomeImage.startAnimating()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

