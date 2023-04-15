//
// MetalGameView.swift
//  TrashCollection
//
//  Created by Caio Gomes Piteli on 10/04/23.
//

import SwiftUI
import UIKit

struct MetalGameView: View {
    
    @State var showNextView = true
    
    @State var missingTrash = 0
    
    @State private var offset = CGSize.zero
    @State private var opacity: Double = 1.0
    
    @State private var offset1 = CGSize.zero
    @State private var opacity1: Double = 1.0
    
    @State private var offset2 = CGSize.zero
    @State private var opacity2: Double = 1.0
    
   
    let cannedFood = Image("canned-food")
    let sodaCan = Image("can")
    let beerCan = Image("beer-can")
    let generator = UINotificationFeedbackGenerator()
    
    var body: some View {
        ZStack{
            Image("background2")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
                .opacity(0.95)
            VStack{
                
                Image("drop-metal")
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
                
                cannedFood
                    .resizable()
                    .position(x: -115, y: -100)
                    .frame(width: 60, height: 60)
                    .offset(offset)
                    .opacity(opacity)
                    .shadow(color: .yellow, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset = gesture.translation
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -230 && gesture.location.y >= -335 && gesture.location.x >= 45 && gesture.location.x <= 110{
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
                
                sodaCan
                    .resizable()
                    .position(x: 120, y: -150)
                    .frame(width: 60, height: 60)
                    .offset(offset1)
                    .opacity(opacity1)
                    .shadow(color: .yellow, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset1 = gesture.translation
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -305 && gesture.location.y >= -405 && gesture.location.x >= 45 && gesture.location.x <= 115{
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
                
                beerCan
                    .resizable()
                    .position(x: -120, y: -90)
                    .frame(width: 60, height: 60)
                    .offset(offset2)
                    .opacity(opacity2)
                    .shadow(color: .yellow, radius: offset1 == .zero ? 7 : 15)
                    .gesture(
                        DragGesture()
                            .onChanged { gesture in
                                offset2 = gesture.translation
                            }
                            .onEnded { gesture in
                                if gesture.location.y <= -365 && gesture.location.y >= -495 && gesture.location.x >= 45 && gesture.location.x <= 110{
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
                    NavigationLink(destination: PaperGameView().navigationBarBackButtonHidden(true), isActive: $showNextView) {
                        EmptyView()
                        
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct MetalGameView_Previews: PreviewProvider {
    static var previews: some View {
        MetalGameView()
    }
}
