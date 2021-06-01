//
//  DetailView.swift
//  Cukur
//
//  Created by ZISACHMAD on 04/05/21.
//

import SwiftUI

struct DetailView: View {
    var white: Color = .white.opacity(0.75)
    var red: Color = .red.opacity(0.6)
    @State var isSmallDevice = UIScreen.main.bounds.height < 750
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
