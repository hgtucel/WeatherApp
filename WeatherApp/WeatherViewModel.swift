//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Gürkan Tüçel on 22.06.2022.
//

import Foundation

class WeatherViewModel: ObservableObject {
    
    func fetchWeather(){
        
        guard let url = URL(string: "") else {
            return
        }
        
        let result = URLSession.shared.dataTask(with: url) {data,response,error in
            
            guard let data = data, error == nil else {
                return
            }
            
            
            
        }
        result.resume()
        
    }
    
    
}
