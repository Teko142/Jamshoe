//
//  CategoryItem.swift
//  Jamshoe
//
//  Created by Артур Олехно on 16/05/2021.
//

import SwiftUI

struct CategoryItem: View {
    var jamshoe: Jamshoe
 
    var body: some View {
        VStack(alignment: .leading) {
            jamshoe.image
                .renderingMode(.original)
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(jamshoe.model)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(jamshoe: ModelData().jamshoes[0])
    }
}
