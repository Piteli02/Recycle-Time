//
//  PageControl2.swift
//  Waste
//
//  Created by Caio Gomes Piteli on 09/04/23.
//

import SwiftUI

struct PageControl2: View {
    @State var currentPageIndex = 0
    
    var body: some View {
        VStack {
            TabView(selection: $currentPageIndex) {
                BinsColors()
                    .tag(0)
                
                BinsColors2()
                    .tag(1)
                
                Thanks()
                    .tag(2)
                
            }
            
            .tabViewStyle(PageTabViewStyle())
            .edgesIgnoringSafeArea(.all)
            
            
        }
    }
}
