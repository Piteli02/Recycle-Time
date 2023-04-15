//
//  Invite.swift
//  TrashCollection
//
//  Created by Caio Gomes Piteli on 10/04/23.
//

import SwiftUI

struct Invite: View {
    var body: some View {
        ZStack{
            Image("Invite")
                .resizable()
                .scaledToFill()
                .padding(.bottom, 13)
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    NavigationLink{
                        PlasticGameView()
                            .navigationBarBackButtonHidden(true)
                    }label: {
                        Image("play-button")
                            .resizable()
                            .frame(width: 130, height: 130)
                    }
                    Spacer()
                }.padding(.top, 150)
                Spacer()
            }
        }
        }
    }


struct Invite_Previews: PreviewProvider {
    static var previews: some View {
        Invite()
    }
}
