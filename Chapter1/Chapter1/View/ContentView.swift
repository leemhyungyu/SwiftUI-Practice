//
//  ContentView.swift
//  Chapter1
//
//  Created by 임현규 on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Tuttle Rock")
                .font(.title)
            HStack {
                Text("Joshua Tree National Park")
                    .font(.subheadline)
                Spacer()
                Text("Califonia")
                    .font(.subheadline)

            }
            .background(.yellow)
        }
        .background(.blue)
        .padding()
    }
}

#Preview {
    ContentView()
}
