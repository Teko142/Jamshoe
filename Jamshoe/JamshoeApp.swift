//
//  JamshoeApp.swift
//  Jamshoe
//
//  Created by Артур Олехно on 16/05/2021.
//

import SwiftUI

@main
struct JamshoeApp: App {
    @StateObject private var modelData = ModelData()
     
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
