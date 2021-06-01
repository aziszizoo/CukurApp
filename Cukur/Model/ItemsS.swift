//
//  ItemsS.swift
//  Cukur
//
//  Created by ZISACHMAD on 04/05/21.
//

import SwiftUI

import SwiftUI

struct ItemS: Identifiable {
    var id = UUID().uuidString
    var namaS: String
    var harga: String
    var iconS: String
    var detail: String
}

var ItemsS = [
    ItemS(namaS: "HairCut", harga: "Rp 60K", iconS: "scissors", detail: "Men Hairdresser"),
    ItemS(namaS: "Shave & Style", harga: "Rp 40K", iconS: "mustache.fill", detail: "Royal Treatment"),
    ItemS(namaS: "Coloring", harga: "Rp 30K", iconS: "paintpalette.fill", detail: "Hair Art Painting"),
    ItemS(namaS: "JuniorCut", harga: "Rp 50K", iconS: "face.smiling.fill", detail: "Kids & Baby Style")
]

