//
//  pamViewController.swift
//  patient
//
//  Created by 卢晓航 on 2017/10/27.
//  Copyright © 2017年 卢晓航. All rights reserved.
//

import UIKit

class pamViewController: UIViewController {
    @IBOutlet weak var moodtag: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func pamselected(_ sender: UIButton){
        moodtag.text = String(sender.tag)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "pamback"){
            let destination = segue.destination as! thViewController
            destination.labeltext = moodtag.text
        }
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
