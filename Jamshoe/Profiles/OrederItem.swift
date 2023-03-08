//
//  OrederItem.swift
//  Jamshoe
//
//  Created by Артур Олехно on 19/05/2021.
//

import SwiftUI

struct OrderItem: View {
    var body: some View {
            Text("My orders")
        }
    }

struct OrderItem_Previews: PreviewProvider {
    static var previews: some View {
        OrderItem()
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
