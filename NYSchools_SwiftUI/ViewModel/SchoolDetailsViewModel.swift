//
//  SchoolDetailsViewModel.swift
//  NYSchools_SwiftUI
//
//  Created by Madhav Kotagiri on 3/9/23.
//

import Foundation


class SchoolDetailsViewModel: ObservableObject {
    
    @Published var schoolDetails = [SchoolDetails]()
    
    var networkManager: NetworkHandler
    
    init(networkManager: NetworkHandler) {
        self.networkManager = networkManager
    }
    
    func getSchoolDetails() {
        networkManager.getDetails(type: [SchoolDetails].self) { response in
            DispatchQueue.main.async {
                self.schoolDetails = response
            }
        }
    }
    
}
