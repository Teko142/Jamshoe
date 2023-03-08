//
//  ApplePayButton.swift
//  Jamshoe
//
//  Created by Артур Олехно on 19/05/2021.
//

import SwiftUI
import UIKit
import PassKit
 
struct ApplePayButton: UIViewRepresentable {
        func updateUIView(_ uiView: PKPaymentButton, context: Context) {
    
        }
        func makeUIView(context: Context) -> PKPaymentButton {
                return PKPaymentButton(paymentButtonType: .plain, paymentButtonStyle: .black)
        }
}
struct ApplePayButtonStyle: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
             return ApplePayButton()
        }
}
