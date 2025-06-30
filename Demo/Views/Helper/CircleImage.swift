//
//  CircleImage.swift
//  Demo
//
//  Created by Nakul Arya on 27/06/25.
//

import SwiftUI

struct CircleImage: View {
    var image : Image
    var size: CGFloat = 150
    var imageName: String = "turtlerock"
    
    var body: some View {
//        Image(imageName)
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: size, height: size)
            image
            .clipShape(Circle())
            .overlay(Circle().stroke(.white,lineWidth: 5))
            .shadow(radius: 5)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
