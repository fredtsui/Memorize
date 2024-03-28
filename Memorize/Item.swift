//
//  Item.swift
//  Memorize
//
//  Created by Fred Tsui on 3/28/24.
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
