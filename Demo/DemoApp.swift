//
//  DemoApp.swift
//  Demo
//
//  Created by Nakul Arya on 26/06/25.
//

import SwiftUI

@main
struct DemoApp: App {

    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
