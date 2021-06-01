//
//  CardView.swift
//  Cukur
//
//  Created by ZISACHMAD on 03/05/21.
//

import SwiftUI

struct CardView: View {
    var item: ItemB
    var white: Color = .white.opacity(0.75)
    var red: Color = .red.opacity(0.6)
    @State var isSmallDevice = UIScreen.main.bounds.height < 750
    var body: some View {
        VStack(spacing: 20) {
            Image(item.foto)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 160, height: 160)
            HStack(spacing: 5) {
                VStack(alignment: .leading, spacing: 5) {
                    Text(item.nama)
                        .font(isSmallDevice ? .system(size: 16) : .none)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                    Text(item.job)
                        .font(isSmallDevice ? .system(size: 16) : .none)
                        .foregroundColor(white)
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                        .padding()
                        .background(Color.white).frame(width: 40, height: 40)
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal,5)
        }
        .padding(.bottom,20)
        .background (
            LinearGradient(gradient: .init(colors:[Color.black.opacity(0.5),Color.black]), startPoint: .top, endPoint: .bottom)
                .cornerRadius(25)
                .padding(.top,55)
        )
    }
}
