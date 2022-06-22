//
//  ContentView.swift
//  WeatherApp
//
//  Created by Gürkan Tüçel on 22.06.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            VStack {
                Text("Weather App")
            }.navigationTitle("Weather App")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
