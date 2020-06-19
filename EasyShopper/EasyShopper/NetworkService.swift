//
//  NetworkService.swift
//  EasyShopper
//
//  Created by Juan Ferrer on 19/06/2020.
//  Copyright © 2020 Ka-ching. All rights reserved.
//

import Foundation

class NetworkService {
    
    func parseJSON(data: Data) -> Product? {
        
        let returnValue = try? JSONDecoder().decode(Product.self, from: data)
        return returnValue
    }
    
    func doRequest(completion: @escaping (Product?)->()) {
        print("En doRequest")
        let url = URL(string: "https://run.mocky.io/v3/4e23865c-b464-4259-83a3-061aaee400ba")
        guard let requestUrl = url else { fatalError() }
        var request = URLRequest(url: requestUrl)
        request.httpMethod = "GET"
        var returnValue:Product?
        
        
        
    let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
       
            guard let data = data else { return }
        print("ERROR")
        print(error as Any)
        print("FIN ERROR")
           
        
         returnValue = self.parseJSON(data: data)
        
        completion(returnValue)
      
     
     }
    task.resume()
        
        
        completion(returnValue)
        }
}
