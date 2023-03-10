//
//  enterData.swift
//  CSE335enterDatawork1
//
//  Created by Arjun Dadhwal on 3/8/23.
//

import SwiftUI

struct enterData: View {
    
    

    var body: some View {
        NavigationView{
            VStack(spacing:100) {
                Text("Enter Data")
                
                
                NavigationLink(
                    destination: enterData(
                        
                    ),
                    label: {
                        Text("Enter Data")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("enterData")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: enterData(
                        
                    ),
                    label: {
                        Text("View My Health")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("enterData")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: enterData(
                        
                    ),
                    label: {
                        Text("Am I at Risk?")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("enterData")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
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
