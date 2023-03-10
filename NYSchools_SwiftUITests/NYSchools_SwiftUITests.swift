//
//  NYSchools_SwiftUITests.swift
//  NYSchools_SwiftUITests
//
//  Created by Madhav Kotagiri on 3/9/23.
//

import XCTest

import Combine

@testable import NYSchools_SwiftUI

final class NYSchools_SwiftUITests: XCTestCase {
    
    var schoolVM: SchoolDetailsViewModel?
    
    var disposable = Set<AnyCancellable>()
    
    override func setUp() {
        let networkManager = MockNetworkManager()
        super.setUp()
        schoolVM = SchoolDetailsViewModel(networkManager: networkManager)
    }
    
    func testSchoolDetails() {
        let schoolExpectation = expectation(description: "School Details")
        schoolVM?.$schoolDetails.sink(receiveValue: { result in
            schoolExpectation.fulfill()
        }).store(in: &disposable)
        schoolVM?.getSchoolDetails()

        waitForExpectations(timeout: 3) { error in
            XCTAssertNotNil(self.schoolVM?.schoolDetails)
        }
    }
    
    override func tearDown() {
        schoolVM = nil
    }
    
}

class MockNetworkManager: NetworkHandler {
    
    func getDetails<T: Codable>(type: T.Type, completion: @escaping (T) -> ()) {
        
        let details: Codable = SchoolDetails(school_name: "High School", location: "Test", phone_number: "Test", school_email: "Test", website: "Test", school_sports: "Test", city: "Test", zip: "Test", state_code: "Test", bin: "Test", overview_paragraph: "Test", total_students: "Test")
        
        completion([details] as! T)
    }
    
}

