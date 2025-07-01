//
//  FavoriteButton.swift
//  Demo
//
//  Created by Nakul Arya on 30/06/25.
//

import SwiftUI

struct FavoriteButton: View {

    @Binding var isFavorite :Bool

    var body: some View {
        Button {
            isFavorite.toggle()
        } label: {
            Label(
                "Toggle favourite",
                systemImage: isFavorite ? "star.fill" : "star"
            )
            .labelStyle(.iconOnly)
            .foregroundStyle(isFavorite ? .yellow : .gray)
        }
    }

}

#Preview {
    FavoriteButton(isFavorite: .constant(true))
}
