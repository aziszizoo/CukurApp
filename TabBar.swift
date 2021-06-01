//
//  TabBar.swift
//  Cukur
//
//  Created by ZISACHMAD on 02/05/21.
//

import SwiftUI

struct TabBar: View {
    @State var currentTab = "house"
    @Namespace var animation
    init() {
        UITabBar.appearance().isHidden = true
    }
    @State var safeArea =
        UIApplication.shared.windows.first?.safeAreaInsets
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            TabView(selection: $currentTab) {
                Home(animation: animation)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[0])
                    .background(Color("bg").ignoresSafeArea(.all))
                Text("Jajan")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[1])
                    .background(Color("bg").ignoresSafeArea())
                Text("BO")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[2])
                    .background(Color("bg").ignoresSafeArea())
                Text("K T P")
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .tag(tabs[3])
                    .background(Color("bg").ignoresSafeArea())
            }
            
            HStack(spacing: 60) {
                ForEach(tabs,id: \.self) {image in
                    TabButton(image: image, selected:$currentTab, animation: animation)
//                    if image != tabs.last{Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)}
                }
            }
            .padding(.horizontal,40)
            .padding(.top,25)
            .padding(.bottom,safeArea?.bottom != 0 ? safeArea?.bottom : 1)
            .background(LinearGradient(gradient: .init(colors: [Color("g1"),Color("g2")]), startPoint: .top, endPoint: .bottom).clipShape(CustomCorner(corners: [.topLeft,.topRight])))
        }
        .ignoresSafeArea(.all, edges: .bottom)
    }
}
    
var tabs = ["scissors","cart.fill","calendar.badge.clock","person.fill"]
