//
//  ContentView.swift
//  Project8_part1
//
//  Created by K.Takahama on R 4/12/03.
//

import SwiftUI

struct ContentView: View {
    //複数のレイアウトの表示　　やっていきやしょう(๑>◡<๑)
    let layout = [ //80で多くのレイアウトを表示
        GridItem(.adaptive(minimum:80, maximum:120)),
    ]
    var body: some View {
        //横スクロール
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0..<100) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
