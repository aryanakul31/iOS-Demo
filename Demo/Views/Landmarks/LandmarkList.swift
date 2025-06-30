//
//  LandmarkList.swift
//  Demo
//
//  Created by Nakul Arya on 30/06/25.
//

import SwiftUI

struct LandmarkList: View {

    @Environment(ModelData.self) var modelData
    @State private var showFavouriteOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavouriteOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationSplitView{
            List{
                Toggle(isOn:$showFavouriteOnly.animation(.default)){
                    Text("Show favourites only").font(.headline)
                }
                ForEach(filteredLandmarks){ landMark in
                    NavigationLink{
                        LandmarkDetail(landmark: landMark)
                    } label: {
                        LandmarkRow(land: landMark)
                    }
                }
                
                .navigationTitle("Landmarks")
            }
        } detail: {
            Text("Select a land mark")
        }
    
    }
}

#Preview {
    LandmarkList()
}
