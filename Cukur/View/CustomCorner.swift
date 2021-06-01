//
//  CustomCorner.swift
//  Cukur
//
//  Created by ZISACHMAD on 02/05/21.
//

import SwiftUI

struct CustomCorner: Shape {
    var corners: UIRectCorner
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii:
                                    CGSize(width: 25, height: 25))
        return Path(path.cgPath)
    }
}
