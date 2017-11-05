//
//  calendarViewController.swift
//  patient
//
//  Created by 卢晓航 on 2017/10/29.
//  Copyright © 2017年 卢晓航. All rights reserved.
//

import UIKit
import JTAppleCalendar

class calendarViewController: UIViewController {

    @IBOutlet weak var monthlabel: UILabel!
    @IBOutlet weak var datebg: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        datebg.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func gotosecond(_ sender: UIButton) {
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
extension calendarViewController: JTAppleCalendarViewDelegate,JTAppleCalendarViewDataSource{
    func calendar(_ calendar: JTAppleCalendarView, willDisplay cell: JTAppleCell, forItemAt date: Date, cellState: CellState, indexPath: IndexPath) {
    }
    func calendar(_ calendar: JTAppleCalendarView, didScrollToDateSegmentWith visibleDates: DateSegmentInfo) {
        let date = visibleDates.monthDates.first!.date
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy"
        let year = formatter.string(from: date)
        formatter.dateFormat = "MMMM"
        let month = formatter.string(from: date)
        monthlabel.text = month+", "+year
    }
    
    func calendar(_ calendar: JTAppleCalendarView, cellForItemAt date: Date, cellState: CellState, indexPath: IndexPath) -> JTAppleCell {
        let cell = calendar.dequeueReusableJTAppleCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        if cellState.dateBelongsTo == .thisMonth{
            let i = arc4random_uniform(3)
            if i==0{
                cell.backgroundColor = UIColor.black
            }else if i==1{
                cell.backgroundColor = UIColor(red: 90/255, green: 200/255, blue: 250/255, alpha: 1)
            }else{
                cell.backgroundColor = UIColor(red: 244/255, green: 96/255, blue: 108/255, alpha: 1)
            }
            cell.dateLabel.textColor = UIColor.white
            
        }else{
            cell.dateLabel.textColor = UIColor.gray
            cell.backgroundColor = UIColor.white
        }
        cell.dateLabel.text = cellState.text
        return cell
    }
    
    func configureCalendar(_ calendar: JTAppleCalendarView) -> ConfigurationParameters {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy MM dd"
        formatter.timeZone = Calendar.current.timeZone
        formatter.locale = Calendar.current.locale
        let startDate = formatter.date(from: "2017 08 01")!
        let endDate = formatter.date(from: "2017 11 04")!
        let parameters = ConfigurationParameters(startDate: startDate,
                                                 endDate: endDate,
                                                 numberOfRows: 6,
            calendar: Calendar.current,
            generateInDates: .forAllMonths,
            generateOutDates: .tillEndOfGrid,
            firstDayOfWeek: .sunday)
        return parameters
    }
    
}








