//
//  ApiServices.swift
//  FetchData
//
//  Created by mac on 10/2/24.
//

import Foundation
import SwiftUI

class ApiServices: ObservableObject{
    @Published var post: [Post] = []
    
    init() {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/posts") else {return}
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            do {
                if let postData = data {
                    let decodedData = try JSONDecoder().decode([Post].self, from: postData)
                    DispatchQueue.main.async {
                        self.post = decodedData
                    }
                }else{
                    print("No data")
                }
            }catch {
                print("Error")
            }
        }.resume()
    }
}
