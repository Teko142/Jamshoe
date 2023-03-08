//
//  JamshoeRow.swift
//  Jamshoe
//
//  Created by Артур Олехно on 16/05/2021.
//

import SwiftUI

struct JamshoeRow: View {
    var jamshoe: Jamshoe
     
    var body: some View {
        HStack {
            jamshoe.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(jamshoe.model)
            
            Spacer()
            
            if jamshoe.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
        
        
    }
}

struct JamshoeRow_Previews: PreviewProvider {
    static var jamshoes = ModelData().jamshoes
    
    static var previews: some View {
        Group {
            JamshoeRow(jamshoe: jamshoes[0])
            JamshoeRow(jamshoe: jamshoes[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
