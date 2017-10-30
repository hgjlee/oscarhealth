//
//  activityViewController.swift
//  patient
//
//  Created by 卢晓航 on 2017/10/27.
//  Copyright © 2017年 卢晓航. All rights reserved.
//

import UIKit

class activityViewController: UIViewController {

    @IBOutlet weak var sleephoursdisplay: UILabel!
    @IBOutlet weak var sleepslider: UISlider!
    @IBOutlet weak var stepdisplay: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        //get the sleep hours and display on slider and the label, display the steps
        sleepslider.minimumValue = 0.0
        sleepslider.maximumValue = 24.0
        sleepslider.value = 10
        sleephoursdisplay.text = String(floor(sleepslider.value*10)/10)
        sleepslider.minimumTrackTintColor = UIColor(red: 244/255, green: 96/255, blue: 108/255, alpha: 1)
        sleepslider.maximumTrackTintColor = UIColor.blue
        sleepslider.thumbTintColor = UIColor.black
        
        sleepslider.isContinuous = true
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func slidHandler(_ sender: UISlider) {
        sleephoursdisplay.text = String(floor(sender.value*10)/10)
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
