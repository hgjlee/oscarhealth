//
//  thViewController.swift
//  patient
//
//  Created by 卢晓航 on 2017/10/31.
//  Copyright © 2017年 卢晓航. All rights reserved.
//

import UIKit

class thViewController: UITabBarController {
    var labeltext : String! = "none"
    override func viewDidLoad() {
        super.viewDidLoad()
        let des = self.viewControllers![0] as! todayViewController
        des.labeltext = self.labeltext
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
}
