//
//  ServicesView.swift
//  Cukur
//
//  Created by ZISACHMAD on 04/05/21.
//

import SwiftUI

struct ServicesView: View {
    var item: ItemS
    var white: Color = .white.opacity(0.75)
    var black: Color = Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)).opacity(0.6)
    @State var isSmallDevice = UIScreen.main.bounds.height < 750
    
    var body: some View {
        ZStack {
            GlassView(style: .regular)
            VStack(alignment: .leading, spacing: 12) {
                Text(item.harga)
//                    .font(isSmallDevice ? .system(size: 14) : .system(size: 18))
                    .foregroundColor(.white)
                
                VStack(alignment: .leading, spacing: 7) {
                    Text(item.namaS)
                        .font(isSmallDevice ? .system(size: 14) : .system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text(item.detail)
                        .font(isSmallDevice ? .system(size: 12) : .system(size: 16))
                        .foregroundColor(white)
                }
            Button(action: {}) {
                Image(systemName: item.iconS)
                    .font(.system(size: 40, weight: .light))
                    .imageScale(.large)
                    .frame(width: 50, height: 50)
                    .foregroundColor(black)
            }
            }
//            .padding(.leading,1)
            .padding(.top)
            .padding(.bottom)
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 15, style: .continuous))
//        .frame(width: screen.width / 2.4, height: screen.height / 6)
//        .background (
//            LinearGradient(gradient: .init(colors:[Color.black.opacity(0.5),Color.black.opacity(1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
//                .cornerRadius(25) )
    }
}
