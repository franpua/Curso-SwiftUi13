//
//  ContentView.swift
//  cuatro-ScrollCardView
//
//  Created by Francisco Gonzalez Rodriguez on 28/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var cardNumber = 1
    @State public var avanzarImagen = false
    
    var body: some View {
        
        VStack{
            VStack{
            Image("UdemyLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 50)
                //.padding(.horizontal)
            
            Text("Instructor".uppercased())
                .font(.system(.footnote, design: .rounded))
            Text("Juan Gabriel Gomila")
                .font(.system(.title, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Text("Profesor Universitario, UCI, Data Scientist & Game Designer")
                .font(.system(.caption, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.secondary)
            Text("139.245 estudiantes en total - 59 cursos - 23.535 reseñas")
                .font(.system(.caption, design: .rounded))
                .foregroundColor(.secondary)
            }.padding(.bottom)
            
        //.padding(7)
            
            ScrollView{
            VStack{
            Text("Cursos de Blockchain")
                .font(.system(.title3, design: .rounded))
                .fontWeight(.bold)
                .frame(maxWidth: 370, alignment:  .leading)
            }
            
        ScrollView(.horizontal){
            HStack{
                Button {
                    avanzarImagen = false
                    withAnimation(Animation.spring()){
                        cardNumber = cardNumber == 4 ? 1 : cardNumber - 1
                    }
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.system(.largeTitle))
                }

            ZStack{
                
                switch cardNumber {
                case 1:
                
                    CardView(avanzarImagen:avanzarImagen, imageName: "Machine Learning", courseTitle: "Curso completo de Machine Learning: Data Science en Python", authorName: "Juan Gabriel Gomila", originalPrice: "199,99 €", discountPrice: "10,99 €")
                                .frame(width:300)
                case 2:
                    CardView(avanzarImagen:avanzarImagen,imageName: "Solidity", courseTitle: "Smart Contracts y Blockchain con Solidity de la A a la Z", authorName: "Juan Gabriel Gomila", originalPrice: "94,99 €", discountPrice: "9,99 €")
                                .frame(width:300)
                case 3:
                    CardView(avanzarImagen:avanzarImagen,imageName: "Blockchain", courseTitle: "Curso completo de Blockchain de cero a experto", authorName: "Juan Gabriel Gomila", originalPrice: "189,99 €", discountPrice: "11,99 €")
                                .frame(width:300)
                default:
                    CardView(avanzarImagen:avanzarImagen,imageName: "Dapps", courseTitle: "Crea DApps con Tokens NFT en Ethereum usando Truffle y React", authorName: "Juan Gabriel Gomila", originalPrice: "159,99 €", discountPrice: "9,99 €")
                                .frame(width:300)
                }
        
            }.onTapGesture {
                avanzarImagen = true
                withAnimation(Animation.spring()) {
                    cardNumber = cardNumber == 4 ? 1 : cardNumber + 1
                }
            }
                Button {
                    avanzarImagen = false
                    withAnimation(Animation.spring()){
                        cardNumber = cardNumber == 4 ? 1 : cardNumber + 1
                    }
                } label: {
                    Image(systemName: "chevron.right")
                        .font(.system(.largeTitle))
                }
        }
        }
                
                
                VStack{
                Text("Cursos de Programación")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                    .frame(maxWidth: 370, alignment:  .leading)
                }
            
            ScrollView(.horizontal){
                
                HStack{
            CardView(imageName: "Machine Learning", courseTitle: "Curso completo de Machine Learning: Data Science en Python", authorName: "Juan Gabriel Gomila", originalPrice: "199,99 €", discountPrice: "10,99 €")
                        .frame(width:300)
            
            CardView(imageName: "Solidity", courseTitle: "Smart Contracts y Blockchain con Solidity de la A a la Z", authorName: "Juan Gabriel Gomila", originalPrice: "94,99 €", discountPrice: "9,99 €")
                        .frame(width:300)

            CardView(imageName: "Blockchain", courseTitle: "Curso completo de Blockchain de cero a experto", authorName: "Juan Gabriel Gomila", originalPrice: "189,99 €", discountPrice: "11,99 €")
                        .frame(width:300)
            
            CardView(imageName: "Dapps", courseTitle: "Crea DApps con Tokens NFT en Ethereum usando Truffle y React", authorName: "Juan Gabriel Gomila", originalPrice: "159,99 €", discountPrice: "9,99 €")
                        .frame(width:300)

                }
            }
                
                VStack{
                Text("Cursos de Big Data")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                    .frame(maxWidth: 370, alignment:  .leading)
                }
            
            ScrollView(.horizontal){
                
                HStack{
            CardView(imageName: "Machine Learning", courseTitle: "Curso completo de Machine Learning: Data Science en Python", authorName: "Juan Gabriel Gomila", originalPrice: "199,99 €", discountPrice: "10,99 €")
                        .frame(width:300)
            
            CardView(imageName: "Solidity", courseTitle: "Smart Contracts y Blockchain con Solidity de la A a la Z", authorName: "Juan Gabriel Gomila", originalPrice: "94,99 €", discountPrice: "9,99 €")
                        .frame(width:300)

            CardView(imageName: "Blockchain", courseTitle: "Curso completo de Blockchain de cero a experto", authorName: "Juan Gabriel Gomila", originalPrice: "189,99 €", discountPrice: "11,99 €")
                        .frame(width:300)
            
            CardView(imageName: "Dapps", courseTitle: "Crea DApps con Tokens NFT en Ethereum usando Truffle y React", authorName: "Juan Gabriel Gomila", originalPrice: "159,99 €", discountPrice: "9,99 €")
                        .frame(width:300)

                }
            }
            }
            Spacer()
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
extension AnyTransition{
    
    static var offsetScaledOpacityIn: AnyTransition{
        AnyTransition.offset(x: -700, y: 0)
            .combined(with: .scale)
            .combined(with: .opacity)
    }
    static var offsetScaledOpacityOut: AnyTransition{
        AnyTransition.offset(x: 700, y: 0)
            .combined(with: .scale)
            .combined(with: .opacity)
    }
    
}
