//
//  ContentView.swift
//  Demo
//
//  Created by Nakul Arya on 26/06/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            VStack (alignment:.center,spacing:0){
                
//                Spacer()
//                ZStack{
//                    VStack{
//                        Spacer()
//                        HStack(){
//                            Spacer()
//                            Image(systemName:"mappin.and.ellipse.circle.fill")
//                                .resizable()
//                                .clipShape(Circle())
//                                .frame(width: 50, height: 50)
//                                .foregroundColor(Color.blue)
//                        }.padding(.horizontal,20)
//                            .padding(.bottom,5)
//                        Rectangle()
//                            .fill(Color.white)
//                            .frame(height: 100,)
//                    }
//                }.frame(height: 220)
                
                
                MapView().edgesIgnoringSafeArea(.all)

                
                CircleImage(size: 200,imageName: "turtlerock")
                    .offset(y:-100)
                    .padding(.bottom,-100)
                
                VStack(alignment:.center,spacing: 20){
                    Text("Random User")
                        .font(.headline)
                        .padding(.all,20)
                    HStack(){
                        Text("Nakul Arya").font(.title2)
                        Spacer()
                        Text("Nakul Arya").font(.title2)
                    }
                }
                .padding(.bottom,30,)
                .padding(.horizontal,20,)
                .edgesIgnoringSafeArea(.bottom)
            }
    }
}

#Preview {
    ContentView()
}
