//
//  SquereImage.swift
//  Jamshoe
//
//  Created by Артур Олехно on 16/05/2021.
//

import SwiftUI

struct SquereImage: View {
    var image: Image
    
    var body: some View {
        image
    }
}
 
struct SquereImage_Previews: PreviewProvider {
    static var previews: some View {
        SquereImage(image: Image("AIR MAX LTD 3 BLACK"))
    }
}
