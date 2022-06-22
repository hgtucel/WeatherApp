//
//  ContentView.swift
//  WeatherApp
//
//  Created by Gürkan Tüçel on 22.06.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = WeatherViewModel()
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Text(viewModel.timezone ?? "-").font(Font.title)
                Text(viewModel.temp ?? "-").font(Font.subheadline)
                Text(viewModel.descText ?? "-").font(Font.body)
            }.navigationTitle("Weather App")
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
