//
//  trendsViewController.swift
//  patient
//
//  Created by 卢晓航 on 2017/10/29.
//  Copyright © 2017年 卢晓航. All rights reserved.
//

import UIKit

class trendsViewController: UIViewController {

    @IBOutlet weak var datebg: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        datebg.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
