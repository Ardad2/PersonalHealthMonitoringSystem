//
//  Home.swift
//  CSE335Homework1
//
//  Created by Arjun Dadhwal on 3/8/23.
//

import SwiftUI

struct Home: View {
    

    
    @StateObject var dayData:dayDictionary = dayDictionary();

    

    var body: some View {
        NavigationView{
            VStack(spacing:100) {

                
                
                NavigationLink(
                    destination: enterData(
                        
                    ),
                    label: {
                        Text("Enter Data")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: viewMyHealth(
                        
                    ),
                    label: {
                        Text("View My Health")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: amIAtRisk(
                        
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
