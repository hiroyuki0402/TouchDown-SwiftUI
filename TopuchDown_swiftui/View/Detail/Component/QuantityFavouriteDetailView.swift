//
//  QuantityFavouriteDetailView.swift
//  TopuchDown_swiftui
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/01.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    // MARK: - プロパティー
    @EnvironmentObject var shop: Shop
    // MARK: - ボディー


    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }//: ボディー
}

#Preview {
    QuantityFavouriteDetailView()
        .environmentObject(Shop())
}
