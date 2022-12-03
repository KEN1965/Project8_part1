//
//  ContentView.swift
//  Project8_part1
//
//  Created by K.Takahama on R 4/12/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //ナビゲーションビュー
        NavigationView {
            // リストで表示 ナビゲーションリンクを消してみるとただのリンクに
            //新しいビューを作成する場合、SheetかNavigationLinkどちらにするかよく検討しいよう
            
            List(0..<10) { row in
//                NavigationLink {
//                    Text("Row \(row)")
//                } label: {
                    Text("Row Number \(row)")
                        .padding()
//                }
                .navigationTitle("SwiftUI")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
