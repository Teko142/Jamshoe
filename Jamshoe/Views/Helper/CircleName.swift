//
//  CircleName.swift
//  Jamshoe
//
//  Created by Артур Олехно on 18/05/2021.
//

import SwiftUI

struct CircleName: View {
    var body: some View {
        Text("AO") 
            .font(.system(size: 60, weight: .semibold))
          .padding()
          .background(
            Circle()
              .stroke()
                .overlay(Circle().stroke(Color.black, lineWidth: 4))
                .shadow(radius: 7)
                .padding(3)
        )
    }
}

struct CircleName_Previews: PreviewProvider {
    static var previews: some View {
        CircleName()
    }
}
