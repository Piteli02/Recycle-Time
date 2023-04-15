//
//  GlassGameView.swift
//  TrashCollection
//
//  Created by Caio Gomes Piteli on 10/04/23.
//

import SwiftUI
import UIKit

struct GlassGameView: View {
    
    @State var showNextView = true
    
    @State var missingTrash = 0
    
    @State private var offset = CGSize.zero
    @State private var opacity: Double = 1.0
    
    @State private var offset1 = CGSize.zero
    @State private var opacity1: Double = 1.0
    
    @State private var offset2 = CGSize.zero
    @State private var opacity2: Double = 1.0
    
    
    let glassBottle = Image("glassbottle")
    let brokenglass = Image("broken-glass")
    let perfume = Image("perfume")
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
                
                Image("drop-glass")
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
                
                glassBottle
                    .resizable()
                    .position(x: 190, y: -265)
                    .frame(width: 60, height: 60)
                    .offset(offset)
                    .opacity(opacity)
                    .shadow(color: .green, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset = gesture.translation
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -430 && gesture.location.y >= -515 && gesture.location.x >= 50 && gesture.location.x <= 105 {
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
                
                brokenglass
                    .resizable()
                    .position(x: -95, y: 20)
                    .frame(width: 60, height: 60)
                    .offset(offset1)
                    .opacity(opacity1)
                    .shadow(color: .green, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset1 = gesture.translation
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -505 && gesture.location.y >= -590 && gesture.location.x >= 55 && gesture.location.x <= 110{
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
                
                perfume
                    .resizable()
                    .position(x: 130, y: -50)
                    .frame(width: 60, height: 60)
                    .offset(offset2)
                    .opacity(opacity2)
                    .shadow(color: .green, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset2 = gesture.translation
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -575 && gesture.location.y >= -655 && gesture.location.x >= 55 && gesture.location.x <= 120{
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
                    NavigationLink(destination: MetalGameView().navigationBarBackButtonHidden(true), isActive: $showNextView) {
                        EmptyView()
                        
                    }
                }
                
            }
        }
        
    }
}

struct GlassGameView_Previews: PreviewProvider {
    static var previews: some View {
        GlassGameView()
    }
}
