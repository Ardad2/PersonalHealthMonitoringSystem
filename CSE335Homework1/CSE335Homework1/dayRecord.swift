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
}


