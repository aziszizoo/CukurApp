//
//  Home.swift
//  Cukur
//
//  Created by ZISACHMAD on 02/05/21.
//

import SwiftUI

struct Home: View {
    var animation: Namespace.ID
    var white: Color = .white.opacity(0.75)
    var red: Color = .red.opacity(0.6)
    @State var detail = false
    @State var isSmallDevice = UIScreen.main.bounds.height < 750
    
    func Header(title: String) -> HStack<TupleView<(Text, Spacer)>> {
        return
            HStack {
                Text(title)
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(white)
                Spacer()
            }
    }
    
    var body: some View {
        ZStack {
            //            WaveView()
            VStack {
                // TOP BAR
                ZStack {
                    HStack {
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "crown.fill")
                                .font(.title2)
                                .foregroundColor(white)
                        }
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: "magnifyingglass")
                                .font(.title2)
                                .foregroundColor(white)
                        }
                    }
                    Text("The Sultan")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
                }
                .padding([.top, .leading, .trailing],20)
                
                // BODY
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        // HERO
                        HStack {
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Meet, Your New")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                    .foregroundColor(white)
                                Text("BARBERSHOP")
                                    .font(.title2)
                                    .fontWeight(.heavy)
                                    .foregroundColor(.white)
                                HStack {
                                    Text("Get Started")
                                        .font(.subheadline)
                                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                        .foregroundColor(.white)
                                    Image(systemName: "chevron.right")
                                        .font(.system(size: 9, weight: .heavy))
                                }
                            }
                            Spacer(minLength: 5)
                            Image("hero")
                                .resizable()
                                .frame(width: 180, height: 180)
                        }
                        .padding([.vertical,.leading], 20)
                        .background(LinearGradient(gradient: .init(colors: [Color("g1"),Color("g2")]), startPoint: .top, endPoint: .bottom)
                                        .cornerRadius(25)
                                        .padding(.vertical,35)
                                        .padding(.trailing,30)
                        )
                        .padding(.horizontal,5)
                        
                        // SLIDER HORIZONTAL
                        Header(title: "Barbers Team")
                            .padding([.leading, .bottom, .trailing])
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 15){
                                ForEach(ItemsB){Item in
                                    CardView(item: Item)
                                }
                            }
                        }
                        .padding(.leading,5)
                        .padding(.bottom,20)
                        
                        // SLIDER VERTICAL
                        Header(title: "Services")
                            .padding()
                        LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 7), count:2), spacing: 7) {
                            ForEach(ItemsS) { Item in
                                ServicesView(item: Item)
                            }
                        }
                        .padding(.horizontal,5)
                    }
                    .padding()
                }
            }
            .fullScreenCover(isPresented: $detail) {
                DetailView()
            }
            .padding(.bottom,80)
        }
    }
}
