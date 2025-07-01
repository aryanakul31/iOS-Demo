//
//  ContentView.swift
//  Demo
//
//  Created by Nakul Arya on 26/06/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        HikeListing()
//        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
