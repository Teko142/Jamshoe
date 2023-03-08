//
//  ProfileSummary.swift
//  Jamshoe
//
//  Created by Артур Олехно on 18/05/2021.
//

import SwiftUI

struct ProfileSummary: View {
    @EnvironmentObject var modelData: ModelData
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center, spacing: 10) {
                Image("settingsImage")
                    .resizable()
                    .ignoresSafeArea(edges: .top)
                    .aspectRatio( contentMode: .fit)
                
                CircleName()
                    .offset(y: -70)
                    .padding(.bottom, -90)
                VStack{
                    Text("Hi,")
                        .font(.body)
                        .foregroundColor(.secondary)
                    Text("\(profile.name) \(profile.surname)")
                }
                .padding()
                Spacer()
            }
            .navigationTitle("Account")
        }
    }
    
}
struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
            .environmentObject(ModelData())
    }
}

