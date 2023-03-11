//
//  viewMyHealth.swift
//  CSE335viewMyHealthwork1
//
//  Created by Arjun Dadhwal on 3/8/23.
//

import SwiftUI

struct viewMyHealth: View {
    
    @StateObject var dayData:dayDictionary = dayDictionary();
    
    @State var test = [dayRecord(date:"03/10/2023", bloodPressureSystolic:110.59, bloodPressureDiastolic:80.73, weight:165.0, sugarLevel:100.35, symptoms:"Hunger"), dayRecord(date:"03/09/2023", bloodPressureSystolic:110.59, bloodPressureDiastolic:80.73, weight:165.0, sugarLevel:100.35, symptoms:"Hunger"),dayRecord(date:"03/08/2023", bloodPressureSystolic:110.59, bloodPressureDiastolic:80.73, weight:165.0, sugarLevel:100.35, symptoms:"Hunger")]
    
    //[dayRecord("03/10/2023", 120, 180, 165, 100, "Exhaustion" )];
    
    

    var body: some View {
            VStack(spacing:100) {
                Text("View My Health")
                
                List {
                    Section(header: ListHeader())
                    {
                        ForEach(dayData.list)
                        {
                            datum in VStack()
                            {
                                HStack {
                                    Text(datum.get_date_string());
                                    Text(String(datum.get_bloodPressureSystolic()));
                                         Text(String(datum.get_bloodPressureDiastolic()));
                                    Text(String(datum.get_sugarLevel()));
                                         Text(String(datum.get_weight()));
                                    Spacer();
                                }
                            }
                        }
                    }
                }
            
                
                
                Spacer()
                Spacer()
            }
                
        }
    }

struct ListHeader: View {
    var body: some View {
        HStack {
            Text("Date   BP(SYS)    BP(DIA)  Sugar  Weight ")
        }
    }
}


struct viewMyHealth_Previews: PreviewProvider {
    static var previews: some View {
        viewMyHealth()
    }
}
