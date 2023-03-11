//
//  dayRecord.swift
//  CSE335Homework1
//
//  Created by Arjun Dadhwal on 3/8/23.
//

import Foundation

class dayRecord: Identifiable
{
    let id = UUID()
    var date:String? = nil;
    var bloodPressureSystolic:Double? = nil;
    var bloodPressureDiastolic:Double? = nil;
    var weight:Double? = nil;
    var sugarLevel:Double? = nil;
    var symptoms:String? = nil;
    
    init (date:String, bloodPressureSystolic:Double, bloodPressureDiastolic:Double, weight:Double, sugarLevel:Double, symptoms:String)
    {
        self.date = date;
        self.bloodPressureSystolic = bloodPressureSystolic;
        self.bloodPressureDiastolic = bloodPressureDiastolic;
        self.weight = weight;
        self.sugarLevel = sugarLevel;
        self.symptoms = symptoms;
    }
    
    func change_record(newBPSystolic:Double, newBPDiastolic:Double,newWeight: Double, newSugar:Double, newSymptoms:String)
    {
        self.bloodPressureSystolic = newBPSystolic;
        self.bloodPressureDiastolic = newBPDiastolic;
        self.weight = newWeight;
        self.sugarLevel = newSugar;
        self.symptoms = newSymptoms;
    }
    
    func get_date() -> String {
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
    
    func get_weight() -> Double
    {
        return self.weight!;
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


