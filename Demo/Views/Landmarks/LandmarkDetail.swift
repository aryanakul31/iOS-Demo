//
//  LandmarkDetail.swift
//  Demo
//
//  Created by Nakul Arya on 30/06/25.
//

import SwiftUI

struct LandmarkDetail: View {
    var landmark: Landmark

    var body: some View {
            ScrollView {
                MapView(coordinate: landmark.locationCoordinates)
                    .edgesIgnoringSafeArea(.all)
                    .frame(height: 300)
                
                CircleImage(image:landmark.image,size: 200,imageName: "turtlerock")
                    .offset(y:-100)
                    .padding(.bottom,-100)
                
                VStack(alignment:.center,spacing: 20){
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
//                .padding(.bottom,30,)
                .padding(.horizontal,20,)
                .edgesIgnoringSafeArea(.bottom)
            }
        
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetail(landmark: ModelData().landmarks[0])
}
