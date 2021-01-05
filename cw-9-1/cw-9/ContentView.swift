//
//  ContentView.swift
//  cw-9

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(movies){ movie in
                NavigationLink(
                    destination: MovieDetailsView(movie: movie),
                    label: {
                        MovieRow(movie: movie)
                    })
            }.navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MovieRow: View {
    let movie:Movie
    
    
    var body: some View {
        HStack{
            Image(movie.name).resizable()
                .scaledToFit().frame(height :80).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(alignment: .leading){
                Text(movie.name).font(.largeTitle)
                Text(movie.characters.joined(separator: ", "))
            }
        }
    }
}
