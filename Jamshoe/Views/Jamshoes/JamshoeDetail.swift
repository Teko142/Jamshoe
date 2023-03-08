//
//  JamshoeDetail.swift
//  Jamshoe
//
//  Created by Артур Олехно on 16/05/2021.
//

import SwiftUI

struct JamshoeDetail: View {
    @EnvironmentObject var modelData: ModelData
    var jamshoe: Jamshoe
    
    var jamshoeIndex: Int {
        modelData.jamshoes.firstIndex(where: { $0.id == jamshoe.id})!
    }
    
    var body: some View {
        ScrollView{
            SquereImage(image: jamshoe.image)
                .ignoresSafeArea(edges: .top)
            
            VStack(alignment: .leading) {
                HStack{
                    Text(jamshoe.model)
                        .font(.title)
                        .foregroundColor(.primary)
                    FavoriteButton(isSet: $modelData.jamshoes[jamshoeIndex].isFavorite)
                    CartButton(isSet: $modelData.jamshoes[jamshoeIndex].inCart)
                    
                }
                HStack {
                    Text(jamshoe.color)
                    Spacer()
                    Text(jamshoe.size)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(jamshoe.model)")
                    .font(.title2)
                Text(jamshoe.about)
            }
            .padding()
            
        }
        .navigationTitle(jamshoe.model)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct JamshoeDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        JamshoeDetail(jamshoe: modelData.jamshoes[0])
            .environmentObject(modelData)
    }
}
