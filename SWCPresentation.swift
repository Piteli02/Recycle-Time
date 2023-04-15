//
//  SWCPresentation.swift
//  TrashCollection
//
//  Created by Caio Gomes Piteli on 10/04/23.
//

import SwiftUI

struct SWCPresentation: View {
    var body: some View {
        Image("Selective")
            .resizable()
            .scaledToFill()
            .padding(.bottom, 13)
    }
}

struct SWCPresentation_preview: PreviewProvider {
    static var previews: some View {
        SWCPresentation()
    }
}
