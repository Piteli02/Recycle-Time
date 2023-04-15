//
//  PageControl.swift
//  Waste
//
//  Created by Caio Gomes Piteli on 09/04/23.
//

import SwiftUI

struct PageControl: View {
    @State var currentPageIndex = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentPageIndex) {
                Welcome()
                    .tag(0)
                
                Apresentation()
                    .tag(1)
                
                TrashProblems()
                    .tag(2)
                
                TrashProduced()
                    .tag(3)
                
                SWCPresentation()
                    .tag(4)
                
                GameExplanationView()
                    .tag(5)
                
                Invite()
                    .tag(6)
                
            }
            
            .tabViewStyle(PageTabViewStyle())
            .edgesIgnoringSafeArea(.all)
            
            
        }
    }
}
