//
//  APIService.swift
//  CoderQuotes
//
//  Created by Viennarz Curtiz on 1/25/22.
//

import SwiftUI

protocol APIService {
    func fetchData()
}

/// Quotes Related
class QuotesAPI: APIService, ObservableObject {
    @Published var items: [Quote] = [Quote(id: "", author: "John Appleseed", en: "Coding is fun")] //default or initial data
    
    func fetchData() {
        
        guard let url = URL(string: "https://programming-quotes-api.herokuapp.com/quotes?count=20") else { fatalError("Missing URL") //early return and should crash if url string is not valid
        }

        let urlRequest = URLRequest(url: url)

        let dataTask = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            
            //early return if error is encountered
            if let error = error {
                print("Request error: ", error)
                return
            }

            guard let response = response as? HTTPURLResponse else { return }

            if response.statusCode == 200 { //200 is success
                
                guard let data = data else { return }
                
                //Decode response JSON data in the Main Thread
                DispatchQueue.main.async {
                    do {
                        let decodedItems = try JSONDecoder().decode([Quote].self, from: data) //decode json data into Models for us to use within the app
                        
                        self.items = decodedItems
                        
                    } catch let error {
                        print("Error decoding: ", error)
                    }
                }
            }
        }

        dataTask.resume()
    }
    
    
}
