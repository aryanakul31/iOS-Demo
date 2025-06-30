//
//  LandmarkRow.swift
//  Demo
//
//  Created by Nakul Arya on 30/06/25.
//

import SwiftUI

struct LandmarkRow: View {
    var land : Landmark
    var body: some View {
        HStack{
            land.image
                .resizable()
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            Text(land.name)
            Spacer()
            if(land.isFavorite)
                {
                    Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)
                
                }
        }
    }
}

#Preview {
    let landmarks = ModelData().landmarks
    
    Group {
        LandmarkRow(land: landmarks[0])
        LandmarkRow(land: landmarks[1])
    }
}
