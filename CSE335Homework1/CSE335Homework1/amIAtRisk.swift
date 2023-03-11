//
//  amIAtRisk.swift
//  CSE335amIAtRiskwork1
//
//  Created by Arjun Dadhwal on 3/8/23.
//

import SwiftUI

struct amIAtRisk: View {
    
    @StateObject var dayData:dayDictionary = dayDictionary();

    

    var body: some View {
        NavigationView{
            VStack(spacing:100) {
                
                Text("Am I at Risk?")
                
                if (dayData.gainedWeight())
                {
                    Text("You are gaining weight")
                }
                if (dayData.sugarHigh())
                {
                    Text("Your sugar level is high")
                }
                if (dayData.bpHigh())
                {
                    Text("Your blood pressure is high")
                }
                else if (!dayData.gainedWeight() && !dayData.sugarHigh() && !dayData.bpHigh()) {
                    Text("You are in good health, keep up the good work");
                }
                
                Spacer()
                Spacer()
            }
                
            }
        }
    }

struct amIAtRisk_Previews: PreviewProvider {
    static var previews: some View {
        amIAtRisk()
    }
}
