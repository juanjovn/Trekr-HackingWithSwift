//
//  ContentView.swift
//  Trekr
//
//  Created by Juanjo Valiño on 22/12/20.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            
            Text (location.more)
                .padding(.horizontal)
        }
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView{
            NavigationView {
                ContentView(location: Locations().primary)
            }
        }
    }
}
