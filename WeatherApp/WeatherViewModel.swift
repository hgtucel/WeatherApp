//
//  WeatherViewModel.swift
//  WeatherApp
//
//  Created by Gürkan Tüçel on 22.06.2022.
//

import Foundation

class WeatherViewModel: ObservableObject {
    
    @Published var title: String?
    @Published var descText: String?
    @Published var temp: String?
    @Published var timezone: String?
    
    init(){
        fetchWeather()
    }
    
    func fetchWeather(){
        
        guard let url = URL(string: "https://api.openweathermap.org/data/2.5/onecall?lat=39.9251&lon=32.8325&lang=tr&appid=a25ffc3abde70c25f3d7f331151a9e3f") else {
            return
        }
        
        let result = URLSession.shared.dataTask(with: url) {data,response,error in
            
            guard let data = data, error == nil else {
                return
            }
            
            do{
                let model = try JSONDecoder().decode(WeatherModel.self,from: data)
                
                DispatchQueue.main.async {
                    self.title = model.current?.weather?.first?.main ?? "-"
                    self.descText = model.current?.weather?.first?.description ?? "-"
                    self.temp = "\(model.current?.temp ?? 0) C"
                    self.timezone = model.timezone
                }
                
            }catch{
                print("Error")
            }
            
        }
        result.resume()
        
    }
    
    
}
