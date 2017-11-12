//
//  todayViewController.swift
//  patient
//
//  Created by 卢晓航 on 2017/10/16.
//  Copyright © 2017年 卢晓航. All rights reserved.
//

import UIKit

class todayViewController: UIViewController {
    
    @IBOutlet weak var todaydatebg: UIView!
    @IBOutlet weak var moodbg: UIView!
    @IBOutlet weak var todaydate: UILabel!
    @IBOutlet weak var activity: UIButton!
    
    @IBOutlet weak var medication: UIButton!
    @IBOutlet weak var mood: UIButton!
    @IBOutlet var bgview: UIView!
    @IBOutlet weak var medicationbg: UIView!
    @IBOutlet weak var activitybg: UIView!
    @IBOutlet weak var moodlabel: UILabel!
    var labeltext:String! = "none"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        bgview.backgroundColor = UIColor.white
        
        todaydatebg.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
        
        moodbg.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
        moodbg.layer.shadowColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1).cgColor;
        moodbg.layer.shadowOffset = CGSize(width: 0, height: 15)
        moodbg.layer.shadowOpacity = 0.5;
        moodbg.layer.shadowRadius = 10.0;
        moodbg.layer.cornerRadius = 5;
        
        activitybg.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
        activitybg.layer.shadowColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1).cgColor;
        activitybg.layer.shadowOffset = CGSize(width: 0, height: 15)
        activitybg.layer.shadowOpacity = 0.5;
        activitybg.layer.shadowRadius = 10.0;
        activitybg.layer.cornerRadius = 5;
        
        medicationbg.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
        medicationbg.layer.shadowColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1).cgColor;
        medicationbg.layer.shadowOffset = CGSize(width: 0, height: 15)
        medicationbg.layer.shadowOpacity = 0.5;
        medicationbg.layer.shadowRadius = 10.0;
        medicationbg.layer.cornerRadius = 5;
        
        switch labeltext {
        case "1":
            moodlabel.text = "afraid"
        case "2":
            moodlabel.text = "tense"
        case "3":
            moodlabel.text = "excited"
        case "4":
            moodlabel.text = "delighted"
        case "5":
            moodlabel.text = "frustrated"
        case "6":
            moodlabel.text = "angry"
        case "7":
            moodlabel.text = "happy"
        case "8":
            moodlabel.text = "glad"
        case "9":
            moodlabel.text = "miserable"
        case "10":
            moodlabel.text = "sad"
        case "11":
            moodlabel.text = "calm"
        case "12":
            moodlabel.text = "satisfied"
        case "13":
            moodlabel.text = "gloomy"
        case "14":
            moodlabel.text = "tired"
        case "15":
            moodlabel.text = "sleepy"
        case "16":
            moodlabel.text = "serene"
        case .none:
            moodlabel.text = "none"
        case .some(_):
            moodlabel.text = "none"
        }
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
