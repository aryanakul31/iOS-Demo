//
//  CategoryRow.swift
//  Demo
//
//  Created by Nakul Arya on 01/07/25.
//

import SwiftUI

struct CategoryRow: View {
    
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading){
            Text(categoryName).font(.headline)
                .padding(.leading,15)
                .padding(.top,5)
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(items) { item in
                        NavigationLink{
                        LandmarkDetail(landmark: item)
                        } label:{
                            CategoryItem(item: item)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    let data = ModelData().categories.first!
    CategoryRow(categoryName: data.key, items: data.value)
}
