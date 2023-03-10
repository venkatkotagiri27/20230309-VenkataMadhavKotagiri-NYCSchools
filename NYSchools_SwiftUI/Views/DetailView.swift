//
//  DetailView.swift
//  NYSchools_SwiftUI
//
//  Created by Madhav Kotagiri on 3/9/23.
//

import SwiftUI

struct DetailView: View {
    
    @State var model: SchoolDetails
        
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                VStack(spacing: 30) {
                    
                    Text(model.school_name ?? "")
                        .font(.title)
                        .bold()
                        .lineSpacing(1.0)
                        .multilineTextAlignment(.center)
                    
                    VStack{
                        Text("Contact:")
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                        Text(model.phone_number ?? "")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        
                        Text("Total Students: \(model.total_students ?? "")")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack {
                        Text("Email:")
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                        Text(model.school_email ?? "")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        Text("Website:")
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                        Text(model.website ?? "")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                            .lineLimit(nil)
                    }
                    
                    VStack{
                        Text("City:")
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                        Text(model.city ?? "")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack{
                        Text("zip:")
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                        Text(model.zip ?? "")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack {
                        Text("State Code:")
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                        Text(model.state_code ?? "")
                            .font(.title2)
                            .multilineTextAlignment(.center)
                    }
                                        
                    VStack {
                        Text("About:")
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                        Text(model.overview_paragraph ?? "")
                            .font(.footnote)
                            .multilineTextAlignment(.center)
                    }
                    
                    VStack {
                        
                        Text("Location:")
                            .font(.title3)
                            .multilineTextAlignment(.leading)
                        Text(model.location ?? "")
                            .font(.caption)
                            .multilineTextAlignment(.center)
                    }
                }
            }
            .background(.clear)
            .padding()
        }
        .navigationTitle("School Details")
    }
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(model: SchoolDetails.)
//    }
//}


