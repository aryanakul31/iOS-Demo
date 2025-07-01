//
//  LandmarkDetail.swift
//  Demo
//
//  Created by Nakul Arya on 30/06/25.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @Environment(ModelData.self) var modelData
    var landmark: Landmark

    var landmarkIndex: Int {
            modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        }
    
    var body: some View {
            @Bindable var modelData = modelData

            ScrollView {
                MapView(coordinate: landmark.locationCoordinates)
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: 300)
                
                CircleImage(image:landmark.image,size: 200,imageName: "turtlerock")
                    .offset(y:-100)
                    .padding(.bottom,-100)
                
                VStack(alignment:.center,spacing: 20){
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        FavoriteButton(
                            isFavorite: $modelData
                                .landmarks[landmarkIndex].isFavorite
                        )
                    }
                    Text(landmark.name)
                        .font(.headline)
                        .padding(.all,20)
                    HStack(){
                        Text(landmark.park).font(.subheadline)
                        Spacer()
                        Text(landmark.state).font(.subheadline)
                    }
                    Divider()
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding(.horizontal,20,)
                .edgesIgnoringSafeArea(.bottom)
            }
        
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let modelData = ModelData()
    LandmarkDetail(landmark: modelData.landmarks[0])
           .environment(modelData)
}
