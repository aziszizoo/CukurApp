//
//  GlassView.swift
//  Cukur
//
//  Created by ZISACHMAD on 04/05/21.
//

import SwiftUI

struct GlassView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    func makeUIView(context: Context) -> UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        return view
    }
    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
    }
}
