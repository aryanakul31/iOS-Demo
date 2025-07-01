//
//  HikeListing.swift
//  Demo
//
//  Created by Nakul Arya on 01/07/25.
//

import SwiftUI

struct HikeListing: View {
    
    @Environment(ModelData.self) var model : ModelData
    var hikes : [Hike] {
        model.hikes
    }
    
    var body: some View {
        NavigationSplitView(sidebar:{
            ScrollView{
                ForEach(hikes){ hike in
                    NavigationLink{
                        HikeDetail(hike: hike)
                    } label: {
                        HikeView(hike: hike)
                    }
                }
            }.navigationTitle("Hike List")
        }, detail: {
            Text("Select a hike")
        })
    }
}

#Preview {
    let modelData = ModelData()
    HikeListing().environment(modelData)
}
