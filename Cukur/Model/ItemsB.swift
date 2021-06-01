//
//  itemservices.swift
//  Cukur
//
//  Created by ZISACHMAD on 03/05/21.
//

import SwiftUI

struct ItemB: Identifiable {
    var id = UUID().uuidString
    var nama: String
    var job: String
    var foto: String
}

var ItemsB = [
    ItemB(nama: "Joni Joni", job: "Barber", foto: "b1"),
    ItemB(nama: "Udin Key", job: "Barber", foto: "b2"),
    ItemB(nama: "Ray", job: "Hairstyle", foto: "b3"),
    ItemB(nama: "Maman", job: "Hairstyle", foto: "b4"),
    ItemB(nama: "Feot", job: "Chasier", foto: "b6"),
    ItemB(nama: "Join Me", job: "Apply?", foto: "b5")
]

