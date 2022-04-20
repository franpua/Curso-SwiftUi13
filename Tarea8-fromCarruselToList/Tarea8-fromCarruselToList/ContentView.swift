//
//  ContentView.swift
//  Tarea8-fromCarruselToList
//
//  Created by Francisco Gonzalez Rodriguez on 17/4/22.
//

import SwiftUI

struct ContentView: View {
    
    var cardViews = [
        CardView(imageName: "Machine Learning", courseTitle: "Curso completo de Machine Learning: Data Science en Python", authorName: "Juan Gabriel Gomila", originalPrice: "199,99 €", discountPrice: "10,99 €"),
        
        CardView(imageName: "Solidity", courseTitle: "Smart Contracts y Blockchain con Solidity de la A a la Z", authorName: "Juan Gabriel Gomila", originalPrice: "94,99 €", discountPrice: "9,99 €"),

        CardView(imageName: "Blockchain", courseTitle: "Curso completo de Blockchain de cero a experto", authorName: "Juan Gabriel Gomila", originalPrice: "189,99 €", discountPrice: "11,99 €"),
        
        CardView(imageName: "Dapps", courseTitle: "Crea DApps con Tokens NFT en Ethereum usando Truffle y React", authorName: "Juan Gabriel Gomila", originalPrice: "159,99 €", discountPrice: "9,99 €"),
    ]
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [
            .font: UIFont(name: "party LET", size: 25)!,
            .foregroundColor: UIColor.systemBrown
        ]
        appearance.titleTextAttributes = [
            .font: UIFont(name: "party LET", size: 16)!,
            .foregroundColor: UIColor.systemBrown
        ]
        
        appearance.setBackIndicatorImage(UIImage(systemName: "arrow.uturn.backward.square.fill"), transitionMaskImage: UIImage( systemName: "arrow.uturn.backward.square"))
        UINavigationBar.appearance().tintColor = UIColor.systemBrown
        
        
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance

        
    }
    
    var body: some View {
        NavigationView {
            
            List(cardViews){ indice in
                NavigationLink(destination: DetailView(course: indice)) {
                    Card(course: indice)
                }
            }
            .navigationTitle("Cursos de Juan Gabriel")
            //.navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Card: View{
    
    var course: CardView
    
    var body: some View{
        
        VStack{
            Image(course.imageName)
            //Lo que está comentado es lo que había hecho yo de entrada pero que no estaba muy correcto.
                //.frame(maxWidth: 350, maxHeight: 250, alignment: .center)
                //.clipped()
                .resizable()
                .aspectRatio( contentMode: .fit)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.3), lineWidth: 3))
                .padding(7)
            HStack {
                VStack(alignment: .leading) {
                    Text(course.courseTitle.uppercased())
                    .font(.system(.headline, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                    Text(course.authorName)
                    .font(.system(.body, design: .rounded))
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)
                HStack{
                    Text(course.discountPrice)
                        .font(.system(.subheadline, design: .rounded))
                            .fontWeight(.regular)
                    Text(course.originalPrice)
                                .font(.system(.caption, design: .rounded))
                                .fontWeight(.regular)
                                .strikethrough(color: .red)
                    }
                
                }
                Spacer()
            }.padding(7)
            
        }
    }
}

struct DetailView: View{
    
    var course: CardView
    
    var body: some View{
        
        VStack{
            Image(course.imageName)
            //Lo que está comentado es lo que había hecho yo de entrada pero que no estaba muy correcto.
                //.frame(maxWidth: 350, maxHeight: 250, alignment: .center)
                //.clipped()
                .resizable()
                .aspectRatio( contentMode: .fit)
                .cornerRadius(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color(red: 130/255, green: 130/255, blue: 130/255, opacity: 0.3), lineWidth: 3))
                .padding(7)
            HStack {
                VStack(alignment: .leading) {
                    Text(course.courseTitle.uppercased())
                    .font(.system(.headline, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                    Text(course.authorName)
                    .font(.system(.body, design: .rounded))
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)
                HStack{
                    Text(course.discountPrice)
                        .font(.system(.subheadline, design: .rounded))
                            .fontWeight(.regular)
                    Text(course.originalPrice)
                                .font(.system(.caption, design: .rounded))
                                .fontWeight(.regular)
                                .strikethrough(color: .red)
                    }
                
                }
            }.padding(7)
            Spacer()

        }
    }
}
