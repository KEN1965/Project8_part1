//
//  ContentView.swift
//  Project8_part1
//
//  Created by K.Takahama on R 4/12/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //画像の内容も変化させたい SwiftUIでの新たなやり方
        GeometryReader { geo in
            Image("orizuru")
                .resizable()//good スケールを変えてみる
                .scaledToFit()
                .frame(width: geo.size.width * 0.8)//左上ではなく中央に
                .frame(width: geo.size.width, height: geo.size.height)
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
