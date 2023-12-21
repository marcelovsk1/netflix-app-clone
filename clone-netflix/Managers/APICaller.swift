//
//  APICaller.swift
//  clone-netflix
//
//  Created by Marcelo Amaral Alves on 2023-12-21.
//

import Foundation

struct Constants {
    static let API_KEY = "532a65eff2df46ffcb01e4b766128daa"
    static let baseURL = "https://api.themoviedb.org"
}

class APICaller {
    static let shared = APICaller()
    
    func getTrendingMovies(completion: @escaping (String) -> Void) {
        
        guard let url = URL(string: "\(Constants.baseURL)//3/trending/all/day?api_key=\(Constants.API_KEY)")
        else {return}
        
        let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let results = try JSONSerialization.jsonObject(with: data, options: .fragmentsAllowed)
                print(results)
                
            } catch {
                print(error.localizedDescription)
            }
        }
    }
}
