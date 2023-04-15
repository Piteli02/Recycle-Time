//
//  PaperGameView.swift
//  TrashCollection
//
//  Created by Caio Gomes Piteli on 10/04/23.
//

import SwiftUI
import UIKit

struct PaperGameView: View {
    
    @State var showNextView = true
    
    @State var missingTrash = 0
    
    @State private var offset = CGSize.zero
    @State private var opacity: Double = 1.0
    
    @State private var offset1 = CGSize.zero
    @State private var opacity1: Double = 1.0
    
    @State private var offset2 = CGSize.zero
    @State private var opacity2: Double = 1.0
    
   
    let cardboard = Image("cardboard")
    let newspaper = Image("newspaper")
    let paper = Image("paper")
    let generator = UINotificationFeedbackGenerator()
    
    var body: some View {
        ZStack{
            
            Image("background3")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.95)
            
            VStack{
                
                Image("drop-paper")
                    .overlay(
                        HStack{
                            Spacer()
                            Text("\(missingTrash)/3")
                                .font(.title)
                                .foregroundColor(.black)
                                .padding(.bottom, 85)
                                .padding(.trailing, 55)

                        }
                    )
                    .padding(.top, 50)
                
                Spacer()
                
                cardboard
                    .resizable()
                    .position(x: -100, y: 260)
                    .frame(width: 60, height: 60)
                    .offset(offset)
                    .opacity(opacity)
                    .shadow(color: .blue, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset = gesture.translation
        
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -240 && gesture.location.y >= -330 && gesture.location.x >= 50 && gesture.location.x <= 110{
                                    missingTrash = missingTrash + 1
                                    generator.notificationOccurred(.success)
                                    withAnimation {
                                        opacity = 0.0
                                    }
                                }else{
                                    generator.notificationOccurred(.error)
                                    offset = .zero
                                }
                            }
                    )
                
                newspaper
                    .resizable()
                    .position(x: 150, y: 50)
                    .frame(width: 60, height: 60)
                    .offset(offset1)
                    .opacity(opacity1)
                    .shadow(color: .blue, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset1 = gesture.translation
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -310 && gesture.location.y >= -435 && gesture.location.x >= 45 && gesture.location.x <= 110{
                                    missingTrash = missingTrash + 1
                                    generator.notificationOccurred(.success)
                                    withAnimation {
                                        opacity1 = 0.0
                                    }
                                }else{
                                    generator.notificationOccurred(.error)
                                    offset1 = .zero
                                }
                            }
                    )
                
                paper
                    .resizable()
                    .position(x: -60, y: -210)
                    .frame(width: 60, height: 60)
                    .offset(offset2)
                    .opacity(opacity2)
                    .shadow(color: .blue, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset2 = gesture.translation
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -375 && gesture.location.y >= -470 && gesture.location.x >= 60 && gesture.location.x <= 105{
                                    missingTrash = missingTrash + 1
                                    generator.notificationOccurred(.success)
                                    withAnimation {
                                        opacity2 = 0.0
                                    }
                                }else{
                                    generator.notificationOccurred(.error)
                                    offset2 = .zero
                                }
                            }
                    )
                
                
                if  missingTrash == 3 {
                    NavigationLink(destination: OrganicGameView().navigationBarBackButtonHidden(true), isActive: $showNextView) {
                        EmptyView()
                        
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct PaperGameView_Previews: PreviewProvider {
    static var previews: some View {
        PaperGameView()
    }
}
