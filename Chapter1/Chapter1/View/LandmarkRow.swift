//
//  LandmarkRow.swift
//  Chapter1
//
//  Created by 임현규 on 7/10/24.
//

import SwiftUI

let landmarks: [Landmark] = load("landmarkData.json")

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
        }
    }
}

#Preview {
    LandmarkRow(landmark: landmarks[0])
}
