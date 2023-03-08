//
//  CategoryRow.swift
//  Jamshoe
//
//  Created by Артур Олехно on 16/05/2021.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Jamshoe]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 16)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { jamshoe in
                        NavigationLink(
                            destination: JamshoeDetail(jamshoe: jamshoe)) {
                            CategoryItem(jamshoe: jamshoe)
                            }
                    }
                    
                }
            }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var jamshoes = ModelData().jamshoes
    
    static var previews: some View {
        CategoryRow(
            categoryName: jamshoes[0].category.rawValue,
            items: Array(jamshoes.prefix(4))
        )
    }
}
