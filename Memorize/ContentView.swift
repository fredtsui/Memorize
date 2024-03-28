//
//  ContentView.swift
//  Memorize
//
//  Created by Fred Tsui on 3/28/24.
//

import SwiftUI
import SwiftData

struct CardView: View {
    @State var isFaceUp: Bool = true
    var content: String = "🚗"
    
    var body: some View {
        ZStack {
            let shape = RoundedRectangle(cornerRadius: 20)
            if isFaceUp {
                shape .fill() .foregroundColor(.white)
                shape .strokeBorder(lineWidth: 3)
                Text(content)
                    .font(.largeTitle)
            } else {
                shape .fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}



struct ContentView: View {
    var emojis = ["🚗", "🚀", "🚎", "⛴️","✈️","🛶","🛰️","🚆","🚓","🛴","🚲","🛵","🛺","🚄"]
    @State var emojiCount = 10
    var body: some View {
        VStack{
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 65))]){
                    ForEach(emojis[0..<emojiCount], id: \.self) { emoji in
                        CardView(content: emoji).aspectRatio(2/3, contentMode: .fit)
                    }
                    
                }
            }
            .foregroundColor(.red)
            Spacer()
            HStack{
                remove
                Spacer()
                Text("\(emojiCount)")
                Spacer()
                add
                
            }
            .padding()
            .font(.largeTitle)
        }
        .padding()
        
    }
    var remove: some View {
        Button(action: {if emojiCount > 1 {emojiCount -= 1}}, label: {
            Image(systemName: "minus.circle")
        })
    }

    var add: some View {
        Button(action: {if emojiCount < emojis.count {emojiCount += 1}}, label: {Image(systemName: "plus.circle")})
    }
}


struct ContentView_Preview: PreviewProvider {
    static var previews: some View{
        ContentView()
            .preferredColorScheme(.dark)
        ContentView()
            .preferredColorScheme(.light)
        
    }
}
