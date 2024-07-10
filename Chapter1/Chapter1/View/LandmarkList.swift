//
//  LandmarkList.swift
//  Chapter1
//
//  Created by 임현규 on 7/10/24.
//

import SwiftUI

struct LandmarkList: View {
    @State private var showFavortiesOnly: Bool = false
    
    var filterdLandmarks: [Landmark] {
        landmarks.filter { !showFavortiesOnly || $0.isFavorite }
    }
    
    var body: some View {
        NavigationSplitView {
            List(filterdLandmarks) { landmark in
                NavigationLink {
                    LandMarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }

    }
}

#Preview {
    LandmarkList()
}
