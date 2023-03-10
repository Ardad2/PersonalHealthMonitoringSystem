//
//  ContentView.swift
//  CSE335Homework1
//
//  Created by Arjun Dadhwal on 3/8/23.
//

import SwiftUI

struct ContentView: View {
    
    

    var body: some View {
        NavigationView{
            VStack {
                HStack{
                    Text("Personal Health Monitoring System").foregroundColor(.blue);
                }
                HStack{
                    Text("Enter Data").foregroundColor(.blue);
                }
                HStack{
                    Text("View My Health").foregroundColor(.blue);
                }
                HStack{
                    Text("Am I at Risk?").foregroundColor(.blue);
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
