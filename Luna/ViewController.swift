//
//  ViewController.swift
//  Luna
//
//  Created by Jacob Lee on 10/12/17.
//  Copyright © 2017 jacob inc. All rights reserved.
//

import UIKit
import HealthKit

class ViewController: UIViewController {
    let healthStore = HKHealthStore()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        hours_slept(completion:{ (hoursRetrieved: Float) in
            let slept_hours = Int(hoursRetrieved)
            print(slept_hours)
            let slept_percent = hoursRetrieved / 24
            
            print(slept_percent)
            self.sleepingprogress.progress = slept_percent
            self.sleepinghours.text = "\(slept_hours)"
        })
        
        retrieveStepCount(completion: { (stepRetrieved: Double) in
            let intstep = Int(stepRetrieved)
            let step_percent = stepRetrieved / 10000
            print(step_percent)
            self.stepsprogress.progress = Float(step_percent)
            self.steps.text = "\(intstep)"
        })
        
        let typestoRead = Set([
            HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sleepAnalysis)!
            , HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!])
        
        let typestoShare = Set([
            HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sleepAnalysis)!
            , HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)!])
        
        self.healthStore.requestAuthorization(toShare: typestoShare, read: typestoRead) { (success, error) -> Void in
            if success == false {
                NSLog(" Display not allowed")
            }
        }
    }
    
    func hours_slept(completion: @escaping (_ hoursRetrieved: Float) -> Void){
        let calendar = Calendar.current
        let startDate = calendar.date(byAdding: .day, value: -2, to: Date())
        let endDate = calendar.date(byAdding: .day, value: -1, to: Date())
        //        let endDate = Date()
        var number = Float()
        
        let sleepType = HKObjectType.categoryType(forIdentifier: HKCategoryTypeIdentifier.sleepAnalysis)
        
        let predicate = HKQuery.predicateForSamples(withStart: startDate, end: endDate, options: [])
        let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierEndDate, ascending: false)
        
        let query = HKSampleQuery(sampleType: sleepType!, predicate: predicate, limit: 30, sortDescriptors: [sortDescriptor]) { (query, tmpResult, error) in
            if let result = tmpResult {
                for item in result {
                    if let sample = item as? HKCategorySample {
                        let value = (sample.value == HKCategoryValueSleepAnalysis.inBed.rawValue) ? "InBed" : "Asleep"
                        print("sleep: \(sample.startDate) \(sample.endDate) - sourceRevision: \(sample.source.name) - value: \(value)")
                        let seconds = sample.endDate.timeIntervalSince(sample.startDate)
                        let minutes = seconds/60
                        let hours = minutes/60
                        
                        number =  Float(hours)
                        
                        print(number)
                        completion(number)
                    }
                }
            }
        }
        healthStore.execute(query)
    }
    @IBOutlet weak var sleepinghours: UILabel!
    @IBOutlet weak var steps: UILabel!
    
    @IBOutlet weak var sleepingprogress: UIProgressView!
    @IBOutlet weak var stepsprogress: UIProgressView!
    
    func retrieveStepCount(completion: @escaping (_ stepRetrieved: Double) -> Void) {
        
        //   Define the Step Quantity Type
        let stepsCount = HKQuantityType.quantityType(forIdentifier: HKQuantityTypeIdentifier.stepCount)
        
        //   Get the start of the day
        let date = Date()
        let cal = Calendar(identifier: Calendar.Identifier.gregorian)
        let newDate = cal.startOfDay(for: date)
        let yesterday = cal.date(byAdding: .day, value: -1, to: Date())
        let today = Date()
        
        //  Set the Predicates & Interval
        let predicate = HKQuery.predicateForSamples(withStart: newDate, end: Date(), options: .strictStartDate)
        var interval = DateComponents()
        interval.day = 1
        
        //  Perform the Query
        let query = HKStatisticsCollectionQuery(quantityType: stepsCount!, quantitySamplePredicate: predicate, options: [.cumulativeSum], anchorDate: newDate as Date, intervalComponents:interval)
        
        query.initialResultsHandler = { query, results, error in
            DispatchQueue.main.async{
                if error != nil {
                    
                    //  Something went Wrong
                    return
                }
                
                if let myResults = results{
                    myResults.enumerateStatistics(from: yesterday!, to: today) {
                        statistics, stop in
                        
                        if let quantity = statistics.sumQuantity() {
                            
                            let steps = quantity.doubleValue(for: HKUnit.count())
                            print("Steps = \(steps)")
                            completion(steps)
                        }
                    }
                }
            }
            
        }
        healthStore.execute(query)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

