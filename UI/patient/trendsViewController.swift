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
    func setChart() {
        let data = [5.0, 4.0, 6.0, 7.0, 12.0, 16.0, 3.0,5.0, 4.0, 6.0, 7.0, 12.0, 16.0, 3.0,5.0, 4.0, 6.0, 7.0, 12.0, 16.0, 3.0,5.0, 4.0, 6.0, 7.0, 12.0, 16.0, 3.0]
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
        
        
        let data2 = [5.0, 4.0, 5.0, 4.0, 6.0, 7.0, 3.3, 6.0, 7.0, 9.0, 12.0, 3.0, 5.5, 3.0,5.0, 4.0, 6.0, 7.0, 12.0, 10.3, 3.0,5.0, 4.0, 6.0, 7.0, 11.2, 7.9, 3.0]
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
        
        let data3 = [5.0, 4.0, 5.0, 7.0, 3.3, 6.0, 7.0, 9.0, 12.0, 3.0, 5.5, 3.0,5.0, 4.0, 6.0, 7.0, 12.0, 10.3, 3.0,5.0, 4.0, 6.0, 7.0, 11.2,4.0, 6.0, 7.9, 3.0]
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
