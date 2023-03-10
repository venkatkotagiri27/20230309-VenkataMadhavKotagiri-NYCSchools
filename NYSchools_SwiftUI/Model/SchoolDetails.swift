//
//  SchoolDetails.swift
//  NYSchools_SwiftUI
//
//  Created by Madhav Kotagiri on 3/9/23.
//

import Foundation


struct SchoolDetails: Codable, Identifiable {
    
    var id: String? {
        return bin
    }
    let school_name: String?
    let location: String?
    let phone_number: String?
    let school_email: String?
    let website: String?
    let school_sports: String?
    let city: String?
    let zip: String?
    let state_code: String?
    let bin: String?
    let overview_paragraph : String?
    let total_students : String?
}


