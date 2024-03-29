//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Fred Tsui on 3/29/24.
//

import SwiftUI

class EmojiMemoryGame {
    
    static let emojis = ["🚗", "🚀", "🚎", "⛴️","✈️","🛶","🛰️","🚆","🚓","🛴","🚲","🛵","🛺","🚄"]
    
    private var model: MemoryGame<String> =
    MemoryGame<String>(numberOfPairsOfCards: 4, createCardContent: { pairIndex in
        emojis[pairIndex]
    })
    
    var cards: Array<MemoryGame<String>.Card>{
        return model.cards
    }
    
}
