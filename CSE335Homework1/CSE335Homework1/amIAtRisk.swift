//
//  amIAtRisk.swift
//  CSE335amIAtRiskwork1
//
//  Created by Arjun Dadhwal on 3/8/23.
//

import SwiftUI

struct amIAtRisk: View {
    
    

    var body: some View {
        NavigationView{
            VStack(spacing:100) {
                Text("Am I at Risk?")
                
                
                NavigationLink(
                    destination: amIAtRisk(
                        
                    ),
                    label: {
                        Text("Enter Data")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("amIAtRisk")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: amIAtRisk(
                        
                    ),
                    label: {
                        Text("View My Health")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("amIAtRisk")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: amIAtRisk(
                        
                    ),
                    label: {
                        Text("Am I at Risk?")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("amIAtRisk")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
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
