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

    init() {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        window = windowScene?.windows.first
    }

    // MARK: - ボディー
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, window?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)


                ScrollView(.vertical) {

                    VStack(spacing: 0) {
                        FeaturedTabView()
                            .padding(.vertical, 20)
                            .frame(height: UIScreen.main.bounds.width / 1.475)

                        FooterView()
                            .padding(.horizontal)
                    }//: VStack

                }//: ScrollView

            }//: VStack
            .background(Color.colorBackground.ignoresSafeArea(.all, edges: .all))
        }//: ZStack
        .ignoresSafeArea(.all, edges: .top)
    }//: MARK - ボディ
}

#Preview {
    HomeView()
}
