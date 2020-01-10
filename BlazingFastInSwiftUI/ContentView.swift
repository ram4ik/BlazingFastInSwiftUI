//
//  ContentView.swift
//  BlazingFastInSwiftUI
//
//  Created by ramil on 10.01.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var rows = (0...5000).map { "Index \($0)" }
    
    var body: some View {
        VStack {
            Button("Shuffle") {
                self.rows.shuffle()
            }
            List(rows, id: \.self) { index in
                Text("Index Number \(index)")
            }.id(UUID())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
