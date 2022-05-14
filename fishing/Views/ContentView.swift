//
//  ContentView.swift
//  fishing
//
//  Created by Reese Chan on 2022/5/13.
//

import SwiftUI

struct ContentView: View {
    @State private var alertIsVisible = false
    
    @State private var slideValue = 50.0
    
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("让钓鱼竿🎣尽可能接近于鱼🐟")
                .bold()
                .font(.footnote)
            Text(String(game.target)+"米")
                .bold()
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1米")
                    .bold()
                    .font(.footnote)
                Slider(value: $slideValue,in: 1.0...100.0)
                Text("100米")
                    .bold()
                    .font(.footnote)
            }
            Button("点我") {
                game.score = game.points(slideValue: Int(slideValue.rounded()))
                game.target = Int.random(in: 2...99)
                alertIsVisible = true
            }.alert(isPresented: $alertIsVisible) {
                return Alert(title: Text("你好呀！"), message: Text("滑块的值是\(Int(slideValue.rounded()))。\n" + "你本轮获得了\(game.score)分"), dismissButton: .default(Text("真棒！")))
            }
           

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        ContentView()
            .previewLayout(.fixed(width: 926, height: 428))
    }
}
