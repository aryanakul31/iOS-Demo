//
//  CategoryHome.swift
//  Demo
//
//  Created by Nakul Arya on 01/07/25.
//

import SwiftUI

struct CategoryHome: View {
    
    @Environment(ModelData.self) var modelData : ModelData
    
    var body: some View {
        NavigationSplitView{
            List{
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    CategoryRow(categoryName: key, items: modelData.categories[key] ?? [])
                        .listRowInsets(EdgeInsets())
                }
            }
            .navigationTitle("Featured")
        } detail: {
            Text("All features")
        }
    }
}

#Preview {
    let modelData = ModelData()
    CategoryHome().environment(modelData)
}
