//
//  ProfileEditor.swift
//  Jamshoe
//
//  Created by Артур Олехно on 18/05/2021.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile

    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.birthDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.birthDate)!
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text ("Name").bold()
                Divider()
                TextField("Name", text: $profile.name)
            }
            HStack {
                Text ("Surname").bold()
                Divider()
                TextField("Surname", text: $profile.surname)
            }
            HStack {
                Text ("Email").bold()
                Divider()
                TextField("Email", text: $profile.email)
            }
            HStack {
                Text ("Phone number").bold()
                Divider()
                TextField("Phone number", text: $profile.phoneNumber)
            }
            VStack(alignment: .leading, spacing: 20) {
                Text("Gender").bold()
                
                Picker("Gender", selection: $profile.genderEmoji) {
                    ForEach(Profile.Gender.allCases) { gender in
                        Text(gender.rawValue).tag(gender)
                    }
                }
                .pickerStyle(SegmentedPickerStyle())
            }
            
            DatePicker(selection: $profile.birthDate,in: dateRange, displayedComponents: .date) {
                Text("Birth Date")
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
