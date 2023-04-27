//
//  ProfileHost.swift
//  0706012110028-Jevon-AFL3
//
//  Created by MacBook Pro on 27/04/23.
//

import SwiftUI

struct ProfileHost: View {
    // add environment view property
    @Environment(\.editMode) var editMode
    // read user profile data
    @EnvironmentObject var modelData: ModelData
    @State private var draftProfile = Profile.default

    var body: some View {
        // display the new summary view
            VStack(alignment: .leading, spacing: 20) {
                // edit button (toggle)
                HStack {
                    Spacer()
                    EditButton()
                }
                
                // conditional view to display profile
                if editMode?.wrappedValue == .inactive {
                    ProfileSummary(profile: modelData.profile)
                } else {
                    ProfileEditor(profile: $draftProfile)
                }
            }
            .padding()
        }
    }

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
        // add model data as environment
            .environmentObject(ModelData())
    }
}
