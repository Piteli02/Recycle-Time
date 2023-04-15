//
//  TrashProduced.swift
//  TrashCollection
//
//  Created by Caio Gomes Piteli on 10/04/23.
//

import SwiftUI

struct TrashProduced: View {
    var body: some View {
        Image("angry")
            .resizable()
            .scaledToFill()
            .padding(.bottom, 13)
    }
}

struct TrashProduced_Previews: PreviewProvider {
    static var previews: some View {
        TrashProduced()
    }
}
