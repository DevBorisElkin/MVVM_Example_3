//
//  NetworkManager.swift
//  MVVM_Example_3
//
//  Created by test on 10.07.2022.
//

import Foundation

class NetworkManager: NSObject{
    
    // immitating network request that send result array of strings into completion
    func fetchMovies(completion: ([String]) -> ()){
        completion(["Movie 1", "Movie 2", "Movie 3"])
    }
    
}
