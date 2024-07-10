//
//  ContentView.swift
//  Chapter1
//
//  Created by 임현규 on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Tuttle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("Califonia")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                
                Divider()
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
