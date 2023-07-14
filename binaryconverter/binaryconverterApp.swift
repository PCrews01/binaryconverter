//
//  binaryconverterApp.swift
//  binaryconverter
//
//  Created by Paul Crews on 7/14/23.
//

import SwiftUI
import SwiftData

@main
struct binaryconverterApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
