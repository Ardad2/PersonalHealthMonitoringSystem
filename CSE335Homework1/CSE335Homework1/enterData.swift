//
//  enterData.swift
//  CSE335enterDatawork1
//
//  Created by Arjun Dadhwal on 3/8/23.
//

import SwiftUI

struct enterData: View {
    
    @State var enterBPSys:String = ""
    @State var enterBPDia:String = "";
    @State var enterWeight:String = "";
    @State var enterSugarLevel:String = "";
    @State var enterSymptoms:String = "";
    
    @State var errorMessage:String = "";
    
    @StateObject var dayData:dayDictionary = dayDictionary();


    var body: some View {
        NavigationView{
            VStack(spacing:100) {
                Text("Enter Data")
                
                if (errorMessage != "")
                {
                    Text("\(errorMessage)")
                }
                
                HStack() {
                    Text("Blood Pressure: ")
                    TextField("Systolic", text: $enterBPSys).keyboardType(.decimalPad);
                    TextField("Diastolic", text: $enterBPDia).keyboardType(.decimalPad);
                    
                }
                HStack() {
                    Text("Weight (lbs)")
                    TextField("Weight", text: $enterWeight).keyboardType(.decimalPad);
                }
                HStack() {
                    Text("Sugar Level: ")
                    TextField("Sugar Level", text: $enterSugarLevel).keyboardType(.decimalPad);
                }
                HStack() {
                    Text("Other Symptoms")
                    TextField("Describe any symptoms you have", text: $enterSymptoms)
                    
                }
                Button(action: {
                    if ( ( ((enterBPSys as NSString).doubleValue) < 0  ) || ( ((enterBPDia as NSString).doubleValue) < 0 ) || ( ((enterWeight as NSString).doubleValue) < 0) || ( ((enterSugarLevel as NSString).doubleValue) < 0))
                    {
                        errorMessage = "Blood Pressure, Weight, and Sugar Levels have to be positive numbers!"
                    }
                    else if (enterBPSys.isEmpty || enterBPDia.isEmpty || enterWeight.isEmpty || enterSugarLevel.isEmpty )
                    {
                        errorMessage = "You have to fill all fields, except for symptoms!"
                    }
                    else {
                        dayData.add_day(Date.now, (enterBPSys as NSString).doubleValue, (enterBPDia as NSString).doubleValue, (enterWeight as NSString).doubleValue, (enterSugarLevel as NSString).doubleValue, "hunger");
                    }

                }) {
                    
                    Text("Submit")
                }
                
                Spacer()
                Spacer()
            }
                
            }
        }
    }

struct enterData_Previews: PreviewProvider {
    static var previews: some View {
        enterData()
    }
}
