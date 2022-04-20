//
//  CardView.swift
//  cuatro-ScrollCardView
//
//  Created by Francisco Gonzalez Rodriguez on 29/11/21.
//

import SwiftUI

struct CardView: View {
    
    var imageName: String
    var courseTitle: String
    var authorName: String
    var originalPrice: String
    var discountPrice: String
    
    var body: some View {
        VStack{
            Image(imageName)
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
                    Text(courseTitle.uppercased())
                    .font(.system(.headline, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(2)
                Text(authorName)
                    .font(.system(.body, design: .rounded))
                    .fontWeight(.regular)
                    .foregroundColor(.secondary)
                HStack{
                    Text(discountPrice)
                        .font(.system(.subheadline, design: .rounded))
                            .fontWeight(.regular)
                    Text(originalPrice)
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

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "Machine Learning", courseTitle: "Curso completo de Machine Learning: Data Science en Python", authorName: "Juan Gabriel Gomila", originalPrice: "199,99 €", discountPrice: "10,99 €")
    }
}
