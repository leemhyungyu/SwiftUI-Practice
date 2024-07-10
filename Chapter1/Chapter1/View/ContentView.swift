//
//  ContentView.swift
//  Chapter1
//
//  Created by 임현규 on 7/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
