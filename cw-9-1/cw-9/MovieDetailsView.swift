//
//  MovieDetailsView.swift
//  cw-9
//
//  Created by ahmad alburaimi on 02/01/2021.
//

import SwiftUI

struct MovieDetailsView: View {
    let movie:Movie
    
    var body: some View {
        ZStack{
            Group{
                Image(movie.name)
                    .resizable().scaledToFill()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
            }.ignoresSafeArea()
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Image(movie.name).resizable()
                    .scaledToFit()
                    .frame(height :300)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                VStack(alignment: .leading){
                    Text(movie.name).font(.system(size: 50))
                        .bold()
                    Text(movie.characters.joined(separator: ", "))
                    Spacer()
                }
            }.padding(.vertical)
            .foregroundColor(.white)
            .shadow(radius: 8)
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: movies[1])
    }
}
