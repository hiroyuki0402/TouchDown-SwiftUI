//
//  ProductDetailView.swift
//  TopuchDown_swiftui
//
//  Created by SHIRAISHI HIROYUKI on 2023/11/01.
//

import SwiftUI

struct ProductDetailView: View {

    // MARK: - プロパティー

    @EnvironmentObject var shop: Shop

    // MARK: - ボディー

    var body: some View {

        VStack(alignment: .leading, spacing: 5) {
            Spacer(minLength: 50)
            /// Navigation

            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top)


            /// ヘッダー
            HeaderDetailView()
                .padding(.horizontal)


            /// トップ
            TopPartDetailView()
                .zIndex(1)

            /// ボトム
            VStack(alignment: .center, spacing: 0) {
                /// サイズ

                /// 説明
                ScrollView(.vertical, showsIndicators: false) {
                    HStack {
                        Text(shop.selectedProduct?.description ?? "")
                            .font(.system(.body, design: .rounded))
                            .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                        .frame(width: .infinity)
                    }
                }
                .frame(maxWidth: .infinity)

                /// 買い物かごへ
                Spacer()
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(
                        CustomShape())
                    .padding(.top, -105))

        }
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color.accentColor.ignoresSafeArea(.all, edges: .all))



    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
