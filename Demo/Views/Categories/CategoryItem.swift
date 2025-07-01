//
//  CategoryItem.swift
//  Demo
//
//  Created by Nakul Arya on 01/07/25.
//

import SwiftUI

struct CategoryItem: View {
    
    var item: Landmark
    
    var body: some View {
        VStack(alignment: .leading){
            item.image
                .renderingMode(.original)
                    .resizable()
                    .frame(width: 155, height: 155)
                    .cornerRadius(5)
            Text(item.name)
                .foregroundStyle(.primary)
                .font(.caption)
            .padding(.vertical, 5)
            
        }.padding(.leading,15)
    }
    
}

#Preview {
    let data = ModelData().landmarks.first!
    CategoryItem(item: data)
}
