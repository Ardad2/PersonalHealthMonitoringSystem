//
//  viewMyHealth.swift
//  CSE335viewMyHealthwork1
//
//  Created by Arjun Dadhwal on 3/8/23.
//

import SwiftUI

struct viewMyHealth: View {
    
    

    var body: some View {
        NavigationView{
            VStack(spacing:100) {
                Text("View My Health")
                
                
                NavigationLink(
                    destination: viewMyHealth(
                        
                    ),
                    label: {
                        Text("Enter Data")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("viewMyHealth")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: viewMyHealth(
                        
                    ),
                    label: {
                        Text("View My Health")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("viewMyHealth")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: viewMyHealth(
                        
                    ),
                    label: {
                        Text("Am I at Risk?")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("viewMyHealth")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                Spacer()
                Spacer()
            }
                
            }
        }
    }

struct viewMyHealth_Previews: PreviewProvider {
    static var previews: some View {
        viewMyHealth()
    }
}
