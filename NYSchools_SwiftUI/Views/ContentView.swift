//
//  ContentView.swift
//  NYSchools_SwiftUI
//
//  Created by Madhav Kotagiri on 3/9/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var schoolvm = SchoolDetailsViewModel(networkManager: NetworkManager())
    
    var body: some View {
        
        NavigationView {
            
            List (schoolvm.schoolDetails) { school in
                NavigationLink(destination: DetailView(model: school)) {
                    Text(school.school_name ?? "")
                }
            }
            .navigationTitle("NY Schools").navigationBarTitleDisplayMode(.inline)
        }
        .onAppear{
            schoolvm.getSchoolDetails()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

