//
//  ProfileHost.swift
//  Landmarks
//
//  Created by 임현규 on 7/11/24.
//

import SwiftUI

struct ProfileHost: View {
    @State private var draftProfile = Profile.default
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData())
}
