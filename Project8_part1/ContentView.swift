//
//  ContentView.swift
//  Project8_part1
//
//  Created by K.Takahama on R 4/12/03.
//

import SwiftUI

struct User: Codable {
    let name: String
    let address: Adress
}

struct Adress: Codable {
    let street: String
    let city: String
}

struct ContentView: View {
    //複雑なJSONのデコード！！　　やっていきやしょう(๑>◡<๑)
    
    var body: some View {
        Button("Decode JSON") {
            let input = """
            {
            "name": "Taylor Swift",
            "address": {
                "street": "555, Taylor Sift Avenu",
                "city": "Nashville"
            }
            }
            """
            //デコードしていきます
            let data = Data(input.utf8)
            
            if let user = try? JSONDecoder().decode(User.self, from: data) {
                print(user.address.street)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
