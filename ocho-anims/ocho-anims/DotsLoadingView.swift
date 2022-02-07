//
//  DotsLoadingView.swift
//  ocho-anims
//
//  Created by Francisco Gonzalez Rodriguez on 25/1/22.
//

import SwiftUI

struct DotsLoadingView: View {
    
    @State private var isLoading = false
    
    var body: some View {
        HStack{
            ForEach(0...8, id: \.self){ index in
                Circle()
                    .frame(width:16, height: 16)
                    .foregroundColor(Color(.systemGreen))
                    .scaleEffect(self.isLoading ? 0 : 1)
                    .animation(Animation.linear(duration: 0.5).repeatForever().delay(Double(index)/8), value: isLoading)
                    .onAppear {
                        isLoading = true
                    }
            }
        } 
    }
}

struct DotsLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        DotsLoadingView()
    }
}
