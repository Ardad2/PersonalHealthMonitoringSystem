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
                
                //This button can be used for testing outputs.
                //Do note that for swift multiplication, 100 * 0.1 = 110.00000000000001
                //Also note data is kept track off for the "previous consecutive days", if a day is missing then the health indicators are resetted.

                Button(action: {
                    let today = Date()
                    print(today)

                    //Add the days in reverse order

                    dayData.add_day_test(Calendar.current.date(byAdding: .hour, value: -24, to: today)!, 110.59, 80.73, 166.0, 110.0, "hunger");
                    dayData.add_day_test(Calendar.current.date(byAdding: .hour, value: -48, to: today)!, 110.59, 80.73, 166.0, 100.0, "hunger");
                    dayData.add_day_test(Calendar.current.date(byAdding: .hour, value: -72, to: today)!, 110.59, 80.73, 166.0, 100, "hunger");
                    dayData.add_day_test(Calendar.current.date(byAdding: .hour, value: -96, to: today)!, 110.59, 80.73, 166.0, 100, "hunger");
                    dayData.add_day_test(Calendar.current.date(byAdding: .hour, value: -120, to: today)!, 110.59, 80.73, 165.0, 100, "hunger");
                    dayData.add_day_test(Calendar.current.date(byAdding: .hour, value: -144, to: today)!, 110.59, 80.73, 165.0, 100, "hunger");
                    dayData.add_day_test(Calendar.current.date(byAdding: .hour, value: -400, to: today)!, 110.59, 80.73, 165.0, 100, "hunger");


    
                    
                    
                }) {
                    Text("Test Input")
                }
                
                Text("Personal Health Monitoring System").foregroundColor(Color.blue);
                
                NavigationLink(
                    destination: enterData(
                        dayData:self.dayData
                    ),
                    label: {
                        Text("Enter Data")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: viewMyHealth(
                        dayData:self.dayData
                    ),
                    label: {
                        Text("View My Health")
                    }).buttonStyle(.borderedProminent)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(true)
                
                NavigationLink(
                    destination: amIAtRisk(
                        dayData:self.dayData
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
