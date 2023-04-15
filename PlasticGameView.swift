//
//  PlasticGameView.swift
//  TrashCollection
//
//  Created by Caio Gomes Piteli on 10/04/23.
//

import SwiftUI
import UIKit

struct PlasticGameView: View {
    
    @State var showNextView = true
    
    @State var missingTrash = 0
    
    @State private var offset = CGSize.zero
    @State private var opacity: Double = 1.0
    
    @State private var offset1 = CGSize.zero
    @State private var opacity1: Double = 1.0
    
    @State private var offset2 = CGSize.zero
    @State private var opacity2: Double = 1.0
    
   
    let plasticBottle = Image("water-bottle")
    let chips = Image("chips")
    let tube = Image("tube")
    
    let generator = UINotificationFeedbackGenerator()
    
    
    var body: some View {
        ZStack{
            
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.95)

            
            VStack{
                    Image("drop-plastic")
                        .overlay(
                            HStack{
                                Spacer()
                                Text("\(missingTrash)/3")
                                    .font(.title)
                                    .foregroundColor(.black)
                                    .padding(.bottom, 150)
                                    .padding(.trailing, 60)

                            }
                        )
                        .padding(.top, 50)
                
                
                Spacer()
                
                plasticBottle
                    .resizable()
                    .position(x: 190, y: 20)
                    .frame(width: 60, height: 60)
                    .offset(offset)
                    .opacity(opacity)
                    .shadow(color: .red, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset = gesture.translation
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -425 && gesture.location.y >= -525 && gesture.location.x >= 50 && gesture.location.x <= 110{
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
                
                chips
                    .resizable()
                    .position(x: -115, y: -65)
                    .frame(width: 60, height: 60)
                    .offset(offset1)
                    .opacity(opacity1)
                    .shadow(color: .red, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset1 = gesture.translation
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -490 && gesture.location.y >= -590 && gesture.location.x >= 40 && gesture.location.x <= 105{
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
                
                tube
                    .resizable()
                    .position(x: -70, y: -15)
                    .frame(width: 60, height: 60)
                    .offset(offset2)
                    .opacity(opacity2)
                    .shadow(color: .red, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset2 = gesture.translation
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -570 && gesture.location.y >= -660 && gesture.location.x >= 50 && gesture.location.x <= 110{
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
                
                
                if missingTrash == 3 {
                    NavigationLink(destination: GlassGameView().navigationBarBackButtonHidden(true), isActive: $showNextView) {
                        EmptyView()
                        
                    }
                    
                    
                }
                
            }
        }
    }
}

struct PLasticGameView_Previews: PreviewProvider {
    static var previews: some View {
        PlasticGameView()
    }
}
