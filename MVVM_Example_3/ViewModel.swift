//
//  ViewModel.swift
//  MVVM_Example_3
//
//  Created by test on 10.07.2022.
//

import Foundation

class ViewModel: NSObject{
    
    @IBOutlet weak var networkManager: NetworkManager!
    
    private var movies: [String]?
    
    func fetchMovies(completion: @escaping() -> ()){
        networkManager.fetchMovies { [weak self] movies in
            self?.movies = movies
            completion()
        }
    }
    
    func numberOfRowsInSection() -> Int{
        return self.movies?.count ?? 0
    }
    
    func titleForCell(at indexPath: IndexPath) -> String{
        return movies?[indexPath.row] ?? "No title"
    }
}
