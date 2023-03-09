//
//  dayList.swift
//  CSE335Homework1
//
//  Created by Arjun Dadhwal on 3/9/23.
//

import Foundation

class dayDictionary: ObservableObject
{
    @Published var list:[dayRecord] = [dayRecord]();
    
    init() {
        
    }
    
    //ADD
    
    func add_day(_ givenDate:Date, _ bloodPressureSystolic:Double, _ bloodPressureDiastolic:Double, _ weight:Double,  _ sugarLevel:Double, _ symptoms:String)
    {
        if (list.count >= 1)
        {
            if (list[0].get_date() == Date.now)
            {
                list[0].change_record(newBPSystolic:bloodPressureSystolic, newBPDiastolic:bloodPressureDiastolic, newWeight: weight, newSugar:sugarLevel, newSymptoms:symptoms)

                
                
            }
            else
            {
                list.insert(dayRecord(bloodPressureSystolic:bloodPressureSystolic, bloodPressureDiastolic:bloodPressureDiastolic, weight:weight, sugarLevel:sugarLevel, symptoms:symptoms), at: 0)
                
                if (list.count > 7)
                {
                    list.remove(at: 7);
                }
            }
        }
        
        //If there is nothing else on the list
        
        
        else {
            list.append(dayRecord(bloodPressureSystolic:bloodPressureSystolic, bloodPressureDiastolic:bloodPressureDiastolic, weight:weight, sugarLevel:sugarLevel, symptoms:symptoms))
        }
    }
    
    //RETURN COUNT
    
    func get_List() -> [dayRecord]
    {
        return list;
    }
    
    //Health Check 1/3: Check if gaining weight
    
    func gainedWeight() -> Bool
    {
        if (list.count < 7)
        {
            return false;
        }
        
    var lastFourDaysWeightSum: Double = 0.0;
        
        for index in 0..<4
        {
            lastFourDaysWeightSum += list[index].get_weight()
        }
        
        var latestAverageWeight =  (lastFourDaysWeightSum) / (4.0);
        
        var earlyWeightSum: Double = 0.0;
        
        for index in 4..<7
        {
            earlyWeightSum += list[index].get_weight();
        }
        
        var earlyAverageWeight = (earlyWeightSum) / (3.0);
        
        if (latestAverageWeight > earlyAverageWeight)
        {
            return true;
        }
        else {
            return false;
        }
        
        
    }
    
    //Health Check 2/3: Check if sugar level higher
    
    func sugarHigh() -> Bool {
        
    }
    
    //Health Check 3/3: Check if Blood Pressure is higher
    
    func bpHigh() -> Bool {
        
    }
    
    
    
    
}
