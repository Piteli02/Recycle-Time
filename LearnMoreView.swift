//
//  LearnMoreView.swift
//  Super Recycle
//
//  Created by Caio Gomes Piteli on 15/04/23.
//

import SwiftUI

struct LearnMoreView: View {
    var body: some View {
        Image("learnMore")
            .resizable()
            .scaledToFill()
            .padding(.bottom, 55)
    }
}

struct LearnMoreView_Previews: PreviewProvider {
    static var previews: some View {
        LearnMoreView()
    }
}
