//
//  TabButton.swift
//  Cukur
//
//  Created by ZISACHMAD on 02/05/21.
//

import SwiftUI

struct TabButton: View {
    var image: String
    @Binding var selected : String
    var animation : Namespace.ID
    var white: Color = .white.opacity(0.75)
    var red: Color = .red.opacity(0.5)
    
    var body: some View {
        Button(action: {
                withAnimation(.spring()){selected = image}
            
        }) {
            VStack(spacing: 12) {
                Image(systemName: image)
                    .font(.system(size: 20))
                    .foregroundColor(selected == image ? .white : red)
                ZStack {
                    Circle()
                        .fill(Color.clear)
                        .frame(width: 8, height: 8)
                    if selected == image {
                        Circle()
                            .fill(Color.white)
                            .matchedGeometryEffect(id: "Tab", in: animation)
                            .frame(width: 8, height: 8)
                    }
                }
            }
        }
    }
}

