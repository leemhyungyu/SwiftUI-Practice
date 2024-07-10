//
//  LandmarkList.swift
//  Chapter1
//
//  Created by 임현규 on 7/10/24.
//

import SwiftUI

struct LandmarkList: View {
    @Environment(ModelData.self) var modelData
    @State private var showFavortiesOnly: Bool = false
    
    var filterdLandmarks: [Landmark] {
        modelData.landmarks.filter { !showFavortiesOnly || $0.isFavorite }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavortiesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filterdLandmarks) { landmark in
                    NavigationLink {
                        LandMarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: filterdLandmarks)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
        .environment(ModelData())
}
