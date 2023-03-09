//
//  dayRecord.swift
//  CSE335Homework1
//
//  Created by Arjun Dadhwal on 3/8/23.
//

import Foundation

class dayRecord
{
    var date:Date? = nil;
    var bloodPressureSystolic:Double? = nil;
    var bloodPressureDiastolic:Double? = nil;
    var sugarLevel:Double? = nil;
    var symptoms:String? = nil;
    
    init (bloodPressureSystolic:Double, bloodPressureDiastolic:Double, sugarLevel:Double, symptoms:String)
    {
        self.date = Date.now;
        self.bloodPressureSystolic = bloodPressureSystolic;
        self.bloodPressureDiastolic = bloodPressureSystolic;
        self.sugarLevel = sugarLevel;
        self.symptoms = symptoms;
    }
    
    func change_record(newBPSystolic:Double, newBPDiastolic:Double, newSugar:Double, newSymptoms:String)
    {
        self.bloodPressureSystolic = newBPSystolic;
        self.bloodPressureDiastolic = newBPDiastolic;
        self.sugarLevel = newSugar;
        self.symptoms = newSymptoms;
    }
    
    func get_date() -> Date {
        return self.date!;
    }
    
    func get_bloodPressureSystolic() -> Double
    {
        return self.bloodPressureSystolic!;
    }
    
    func get_bloodPressureDiastolic() -> Double
    {
        return self.bloodPressureDiastolic!;
    }
    
    func get_sugarLevel() -> Double
    {
        return self.sugarLevel!;
    }
    
    func get_symptoms() -> String
    {
        return self.symptoms!;
    }
}


