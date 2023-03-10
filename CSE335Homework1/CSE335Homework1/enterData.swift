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
    
    

    var body: some View {
        NavigationView{
            VStack(spacing:100) {
                Text("Enter Data")
                
                HStack() {
                    Text("Blood Pressure: ")
                    TextField("Systolic", text: $enterBPSys)
                    TextField("Diastolic", text: $enterBPDia)
                    
                }
                HStack() {
                    Text("Weight (lbs)")
                    TextField("Weight", text: $enterWeight)
                }
                HStack() {
                    Text("Sugar Level: ")
                    TextField("Sugar Level", text: $enterSugarLevel)
                }
                HStack() {
                    Text("Other Symptoms")
                    TextField("Describe any symptoms you have", text: $enterSymptoms)
                    
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
