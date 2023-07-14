//
//  Item.swift
//  binaryconverter
//
//  Created by Paul Crews on 7/14/23.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
