//
//  dayList.swift
//  CSE335Homework1
//
//  Created by Arjun Dadhwal on 3/9/23.
//

import Foundation

class dayList: ObservableObject
{
    @Published var list:[dayRecord] = [dayRecord]();
    
    init() {
        
    }
    
    func add_day(_ givenDate:Date, _ bloodPressureSystolic:Double, _ bloodPressureDiastolic:Double, _ sugarLevel:Double, _ symptoms:String)
    {
        if (list.count >= 1)
        {
            if (list[0].get_date() == Date.now)
            {
                list[0].change_record(newBPSystolic:bloodPressureSystolic, newBPDiastolic:bloodPressureDiastolic, newSugar:sugarLevel, newSymptoms:symptoms)

                
                
            }
            else
            {
                list.insert(dayRecord(bloodPressureSystolic:bloodPressureSystolic, bloodPressureDiastolic:bloodPressureDiastolic, sugarLevel:sugarLevel, symptoms:symptoms), at: 0)
                
                if (list.count > 7)
                {
                    list.remove(at: 7);
                }
            }
        }
        
        //If there is nothing else on the list
        
        
        else {
            list.append(dayRecord(bloodPressureSystolic:bloodPressureSystolic, bloodPressureDiastolic:bloodPressureDiastolic, sugarLevel:sugarLevel, symptoms:symptoms))
        }
    }
    
    
    
    
}
