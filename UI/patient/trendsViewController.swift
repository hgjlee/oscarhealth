//
//  trendsViewController.swift
//  patient
//
//  Created by 卢晓航 on 2017/10/29.
//  Copyright © 2017年 卢晓航. All rights reserved.
//

import UIKit
import Charts

class trendsViewController: UIViewController {
    
    
    @IBOutlet weak var datebg: UIView!
    
    @IBOutlet weak var lineChartView: LineChartView!
    @IBOutlet weak var line2ChartView: LineChartView!
    @IBOutlet weak var line3ChartView: LineChartView!
    override func viewDidLoad() {
        super.viewDidLoad()
        datebg.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
        setChart()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier=="trendsback"){
            if let tabVC = segue.destination as? UITabBarController{
                tabVC.selectedIndex=1
            }
        }
    }
    func setChart() {
        let data = [7.0, 3.0, 6.0, 7.0, 7.0, 3.0, 7.0,14.0, 1.0, 8.0, 14.0, 2.0, 7.0, 14.0,7.0, 7.0, 12.0, 7.0, 7.0, 7.0, 6.0,9.0, 13.0, 12.0, 11.0, 15.0, 7.0, 10.0]
        var dataEntries: [ChartDataEntry] = []
        for i in 0..<data.count {
            let dataEntry = ChartDataEntry(x: Double(i), y: data[i])
            dataEntries.append(dataEntry)
        }
        let lineChartDataSet = LineChartDataSet(values: dataEntries, label: "mood score")
        lineChartDataSet.colors = [NSUIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)]
        lineChartDataSet.drawCirclesEnabled = false
        lineChartDataSet.drawValuesEnabled = false
        let lineChartData = LineChartData()
        lineChartData.addDataSet(lineChartDataSet)
        lineChartView.data = lineChartData
        lineChartView.xAxis.labelPosition = XAxis.LabelPosition.bottom
        lineChartView.chartDescription?.text=""
        
        
        let data2 = [6.28,6.03,6.46,6.56,6.58,6.05,6.02,6.12,5.72,6.72,6.71,6.4,6.49,6.28,6.5,6.43,7.46,7.05,7.35,7.31,6.21,5.63,5.66,7.17,7.27,5.42,6.65,10.94]
        var dataEntries2: [ChartDataEntry] = []
        for i in 0..<data2.count {
            let dataEntry2 = ChartDataEntry(x: Double(i), y: data2[i])
            dataEntries2.append(dataEntry2)
        }
        let lineChartDataSet2 = LineChartDataSet(values: dataEntries2, label: "hour slept")
        lineChartDataSet2.colors = [NSUIColor(red: 254/255, green: 67/255, blue: 101/255, alpha: 1)]
        lineChartDataSet2.drawCirclesEnabled = false
        lineChartDataSet2.drawValuesEnabled = false
        let lineChartData2 = LineChartData()
        lineChartData2.addDataSet(lineChartDataSet2)
        line2ChartView.data = lineChartData2
        line2ChartView.xAxis.labelPosition = XAxis.LabelPosition.bottom
        line2ChartView.chartDescription?.text=""
        
        let data3 = [10.401,6.73,10.621,7.867,9.367,9.798,10.764,8.388,8.213,8.832,10.586,11.117,10.881,10.423,10.677,7.745,10.732,10.684,11.247,7.289,9.015,9.741,11.4,10.156,10.845,9.819,9.11,8.075]
        var dataEntries3: [ChartDataEntry] = []
        for i in 0..<data3.count {
            let dataEntry3 = ChartDataEntry(x: Double(i), y: data3[i]*1000)
            dataEntries3.append(dataEntry3)
        }
        let lineChartDataSet3 = LineChartDataSet(values: dataEntries3, label: "steps")
        lineChartDataSet3.colors = [NSUIColor(red: 20/255, green: 68/255, blue: 106/255, alpha: 1)]
        lineChartDataSet3.drawCirclesEnabled = false
        lineChartDataSet3.drawValuesEnabled = false
        let lineChartData3 = LineChartData()
        lineChartData3.addDataSet(lineChartDataSet3)
        line3ChartView.data = lineChartData3
        line3ChartView.xAxis.labelPosition = XAxis.LabelPosition.bottom
        line3ChartView.chartDescription?.text=""
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
