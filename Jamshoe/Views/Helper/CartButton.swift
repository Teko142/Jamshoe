//
//  CartButton.swift
//  Jamshoe
//
//  Created by Артур Олехно on 19/05/2021.
//

import SwiftUI

struct CartButton: View {
    @Binding var isSet: Bool
     
    var body: some View {
        Button(action: {
            isSet.toggle()
        }) {
            Image(systemName: isSet ? "cart.fill" : "cart")
                .foregroundColor(isSet ? Color.green : Color.gray)
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(isSet: .constant(true))
    }
}
