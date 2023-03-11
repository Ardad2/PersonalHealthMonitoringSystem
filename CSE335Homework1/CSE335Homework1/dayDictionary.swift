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
    let calendar = Calendar.current
    
    init() {
        
    }
    
    //ADD
    
    func add_day(_ givenDate:Date, _ bloodPressureSystolic:Double, _ bloodPressureDiastolic:Double, _ weight:Double,  _ sugarLevel:Double, _ symptoms:String)
    {
        let today = Date.now;
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .short;
        
        var todayString = formatter1.string(from: today);
        


            if (list.count >= 1)
            {
                if (todayString == list[0].get_date_string())
                {
                    list[0].change_record(newBPSystolic:bloodPressureSystolic, newBPDiastolic:bloodPressureDiastolic, newWeight: weight, newSugar:sugarLevel, newSymptoms:symptoms)
                    
                    
                    
                }
                else
                {
                    list.insert(dayRecord(date:givenDate, bloodPressureSystolic:bloodPressureSystolic, bloodPressureDiastolic:bloodPressureDiastolic, weight:weight, sugarLevel:sugarLevel, symptoms:symptoms), at: 0)
                    
                    if (list.count > 7)
                    {
                        list.remove(at: 7);
                    }
                }
            }
            
            //If there is nothing else on the list
            
            
            else {
                list.append(dayRecord(date:givenDate, bloodPressureSystolic:bloodPressureSystolic, bloodPressureDiastolic:bloodPressureDiastolic, weight:weight, sugarLevel:sugarLevel, symptoms:symptoms))
            }

        

    }
    
    func add_day_test(_ givenDate:Date, _ bloodPressureSystolic:Double, _ bloodPressureDiastolic:Double, _ weight:Double,  _ sugarLevel:Double, _ symptoms:String)
    {
        let today = Date.now;
        let formatter1 = DateFormatter()
        formatter1.dateStyle = .short;
                
        var givenDateString =  formatter1.string(from: givenDate);

                list.append(dayRecord(date:givenDate, bloodPressureSystolic:bloodPressureSystolic, bloodPressureDiastolic:bloodPressureDiastolic, weight:weight, sugarLevel:sugarLevel, symptoms:symptoms))
 
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
        
        var currentDate = list[0].get_date()
        
        
        var lastFourDaysWeightSum: Double = list[0].get_weight();
        
        for index in 1..<4
        {
            currentDate = Calendar.current.date(byAdding: .hour, value: -24, to: currentDate)!
            
            var formatter1 = DateFormatter()
            formatter1.dateStyle = .short;
            
            var currentdateString = formatter1.string(from: currentDate);
            
            var traversedString = formatter1.string(from: list[index].get_date())
            
            if (currentdateString != traversedString)
            {
                return false;
            }
            
            
            
            lastFourDaysWeightSum += list[index].get_weight()
        }
        
        var latestAverageWeight =  (lastFourDaysWeightSum) / (4.0);
        
        var earlyWeightSum: Double = 0.0;
        
        for index in 4..<7
        {
            currentDate = Calendar.current.date(byAdding: .hour, value: -24, to: currentDate)!
            
            var formatter1 = DateFormatter()
            formatter1.dateStyle = .short;
            
            var currentdateString = formatter1.string(from: currentDate);
            
            var traversedString = formatter1.string(from: list[index].get_date())
            
            if (currentdateString != traversedString)
            {
                return false;
            }
            

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
        if (list.count < 2)
        {
            return false;
        }
        
        var currentDate = list[0].get_date()

        
        currentDate = Calendar.current.date(byAdding: .hour, value: -24, to: currentDate)!
        
        var formatter1 = DateFormatter()
        formatter1.dateStyle = .short;
        
        var currentdateString = formatter1.string(from: currentDate);
        
        var traversedString = formatter1.string(from: list[1].get_date())
        
        if (currentdateString != traversedString)
        {
            return false;
        }
        
        
        
        var dangerSugar:Double = (list[1].get_sugarLevel()) * (1.10);
        
        var todaySugar:Double = list[0].get_sugarLevel();
        
        print(dangerSugar);
        print(todaySugar);
        
        if (todaySugar >= dangerSugar)
        {
            return true;
        }
        else {
            return false;
        }
        
        
    }
    
    //Health Check 3/3: Check if Blood Pressure is higher
    
    func bpHigh() -> Bool {
        
        if (list.count < 2)
        {
            return false;
        }
        
        var currentDate = list[0].get_date()

        
        currentDate = Calendar.current.date(byAdding: .hour, value: -24, to: currentDate)!
        
        var formatter1 = DateFormatter()
        formatter1.dateStyle = .short;
        
        var currentdateString = formatter1.string(from: currentDate);
        
        var traversedString = formatter1.string(from: list[1].get_date())
        
        if (currentdateString != traversedString)
        {
            return false;
        }
        
        var dangerBPSys = (list[1].get_bloodPressureSystolic()) * (1.10) ;
        var dangerBPDia =  (list[1].get_bloodPressureDiastolic()) * (1.10);
        
        var currBPSys = (list[0].get_bloodPressureSystolic());
        var currBPDia = (list[0].get_bloodPressureDiastolic());
        
        if ( (currBPSys >= dangerBPSys) || (currBPDia >= dangerBPDia) || ( (currBPSys >= dangerBPSys) && (currBPDia >= dangerBPDia)  ) )
             {
            return true;
        }
             return false;
    }
    
    
    
    
}
