//
//  ContentView.swift
//  Project8_part1
//
//  Created by K.Takahama on R 4/12/03.
//

import SwiftUI
//カスタムテキスト
struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}
struct ContentView: View {
    var body: some View {
        //スクロールビュー
        ScrollView(.horizontal) {
            //LaxyStackにすれば、その都度呼び出される
            //水平にする場合
            LazyHStack (spacing: 10){
                ForEach(0..<100) {
                    CustomText("Item \($0)")
                        .font(.title)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
