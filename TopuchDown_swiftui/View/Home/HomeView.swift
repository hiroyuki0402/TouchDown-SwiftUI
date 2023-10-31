//
//  HomeView.swift
//  TopuchDown_swiftui
//
//  Created by SHIRAISHI HIROYUKI on 2023/10/29.
//

import SwiftUI

struct HomeView: View {

    // MARK: - プロパティー
    var window: UIWindow?

    @StateObject var productViewModel = ProductViewModel()
    @StateObject var categoryViewModel = CategoryViewModel()
    @StateObject var playerViewModel = PlayerDataViewModel()


    init() {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first

    }

    // MARK: - ボディー
    var body: some View {
        ZStack {
            VStack(spacing: 0) {

                /// ナビゲーションバー
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, window?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)


                ScrollView(.vertical) {

                    VStack(spacing: 0) {
                        /// セグメント
                        FeaturedTabView()
                            .padding(.vertical, 20)
                            .frame(height: UIScreen.main.bounds.width / 1.475)

                        /// カテゴリー
                        CategoryGridView()

                        /// 商品エリアタイトル
                        TitleView(title: "helmet".uppercased())

                        /// 商品
                        LazyVGrid(
                            columns: categoryViewModel.gridLayout().gridLayouts,
                            spacing: 15,
                            content: {
                                ForEach(productViewModel.productDatas) { item in
                                    ProductItemView(productData: item)
                                }
                        })//: LazyVGrid
                        .padding(15)

                        /// フッター
                        FooterView()
                            .padding(.horizontal)
                    }//: VStack

                }//: ScrollView

            }//: VStack
            .background(Color.colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZStack
    }//: MARK - ボディ
}

#Preview {
    HomeView()
}
