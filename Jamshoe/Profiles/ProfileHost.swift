//
//  ProfileHost.swift
//  Jamshoe
//
//  Created by Артур Олехно on 18/05/2021.
//

import SwiftUI

struct ProfileHost: View {
    @Environment(\.editMode) var editMode
    @EnvironmentObject var modelData: ModelData
    @State private var exampleProfile = Profile.default
     
    var body: some View {
        NavigationView {
            List{
                ProfileSummary(profile: modelData.profile)
                NavigationLink (destination: ProfileEditor(profile: $modelData.profile)){
                    SettingsRow()
                }
                NavigationLink (destination: Purchases()){
                    OrderItem()
                }
            }
            .listStyle(InsetListStyle())
            .navigationTitle("My Account")
        }
    }
}
struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
