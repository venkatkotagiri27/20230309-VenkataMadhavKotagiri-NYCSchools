//
//  NetworkManager.swift
//  NYSchools_SwiftUI
//
//  Created by Madhav Kotagiri on 3/9/23.
//

import Foundation

protocol NetworkHandler {
    func getDetails<T: Codable>(type: T.Type, completion: @escaping (T) -> ())
}

class NetworkManager: NetworkHandler {
        
    func getDetails<T: Codable>(type: T.Type, completion: @escaping (T) -> ()) {
        
        if let url = URL(string: "https://data.cityofnewyork.us/resource/s3k6-pzi2.json") {
            
            let session = URLSession(configuration: .default)
            
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    
                    let decoder = JSONDecoder()
                    
                    do {
                        if let safeData = data {
                            let results = try decoder.decode(T.self, from: safeData)
                            
                            completion(results)
                            
                        }
                    } catch {
                        print(error)
                    }
                }
            }
            task.resume()
        }
    }
}
