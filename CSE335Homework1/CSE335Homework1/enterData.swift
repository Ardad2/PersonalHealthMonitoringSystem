//
//  enterData.swift
//  CSE335Homework1
//
//  Created by Arjun Dadhwal on 3/8/23.
//

import SwiftUI

struct Home: View {
    
    

    var body: some View {
        NavigationView{
            VStack(spacing:100) {
                Text("Personal Health Monitoring System")
                
                
                NavigationLink(
                    destination: Home(
                        
                    ),
                    label: {
                        Text("Enter Data")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: Home(
                        
                    ),
                    label: {
                        Text("View My Health")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: Home(
                        
                    ),
                    label: {
                        Text("Am I at Risk?")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                Spacer()
                Spacer()
            }
                
            }
        }
    }

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
