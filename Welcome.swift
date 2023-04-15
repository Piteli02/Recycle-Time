//
//  Apresentation.swift
//  TrashCollection
//
//  Created by Caio Gomes Piteli on 10/04/23.
//

import SwiftUI

struct Welcome: View {
    var body: some View {
        
        Image("Welcome")
            .resizable()
            .scaledToFill()
            .padding(.bottom, 13)
        
    }
}

struct Welcome_Previews: PreviewProvider {
    static var previews: some View {
        Welcome()
    }
}
