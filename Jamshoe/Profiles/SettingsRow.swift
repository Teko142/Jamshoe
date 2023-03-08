//
//  SettingsRow.swift
//  Jamshoe
//
//  Created by Артур Олехно on 18/05/2021.
//

import SwiftUI

struct SettingsRow: View {
    
  //  @Environment(\.editMode) var editMode
 //  @EnvironmentObject var modelData: ModelData
//    @State private var exampleProfile = Profile.default
    var body: some View {
            Text("My details")
        }
    }


struct SettingRow_Previews: PreviewProvider {
    static var previews: some View {
        
        
        SettingsRow()
            .previewLayout(.fixed(width: 300, height: 70))
          //  .environmentObject(ModelData())
    }
}
