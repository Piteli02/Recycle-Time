//
//  Thanks.swift
//  TrashCollection
//
//  Created by Caio Gomes Piteli on 10/04/23.
//

import SwiftUI

struct Thanks: View {
    var body: some View {
        ZStack{
            Image("thanks")
                .resizable()
                .scaledToFill()
                .padding(.bottom, 13)
            
            VStack{
                NavigationLink{
                    PlasticGameView()
                        .navigationBarBackButtonHidden(true)
                }label: {
                    Image("play-again")
                        .resizable()
                        .frame(width: 203, height: 62)
                }
                
                .padding()
                
                NavigationLink{
                    LearnMoreView()
                }label: {
                    Image("learn-more")
                        .resizable()
                        .frame(width: 203, height: 62)
                }
            }.padding(.top, 180)
        }
    }
}

struct Thanks_Previews: PreviewProvider {
    static var previews: some View {
        Thanks()
    }
}
