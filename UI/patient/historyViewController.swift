//
//  historyViewController.swift
//  patient
//
//  Created by 卢晓航 on 2017/10/16.
//  Copyright © 2017年 卢晓航. All rights reserved.
//

import UIKit

class historyViewController: UIViewController {

    @IBOutlet weak var calendarbg: UIView!
    @IBOutlet weak var trendsbg: UIView!
    override func viewDidLoad() {
        
        super.viewDidLoad()
        calendarbg.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
        calendarbg.layer.shadowColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1).cgColor;
        calendarbg.layer.shadowOffset = CGSize(width: 0, height: 15)
        calendarbg.layer.shadowOpacity = 0.5;
        calendarbg.layer.shadowRadius = 10.0;
        calendarbg.layer.cornerRadius = 5;
        
        trendsbg.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
        trendsbg.layer.shadowColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1).cgColor;
        trendsbg.layer.shadowOffset = CGSize(width: 0, height: 15)
        trendsbg.layer.shadowOpacity = 0.5;
        trendsbg.layer.shadowRadius = 10.0;
        trendsbg.layer.cornerRadius = 5;
        
      
        
        
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
