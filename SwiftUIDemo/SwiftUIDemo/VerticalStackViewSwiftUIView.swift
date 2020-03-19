//
//  VerticalStackViewSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Anmol Chauhan on 19/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//


import SwiftUI

struct VerticalStackViewSwiftUIView: View {
    var body: some View {
        VStack {
            Text("Vertical Stack View 1")
                .padding(.all, 20.0)
                .lineLimit(nil)
                .background(Color.red)
            Text("Vertical Stack View 2")
                .padding(.all, 20.0)
                .lineLimit(nil)
                .background(Color.yellow)
            Text("Vertical Stack View 3")
                .padding(.all, 20.0)
                .lineLimit(nil)
                .background(Color.red)
            Text("Vertical Stack View 4")
                .padding(.all, 20.0)
                .lineLimit(nil)
                .background(Color.green)
            Text("Vertical Stack View 5")
                .padding(.all, 20.0)
                .lineLimit(nil)
                .background(Color.red)
            Text("Vertical Stack View 6")
                .padding(.all, 20.0)
                .lineLimit(nil)
                .background(Color.yellow)
        }
    }
}

struct VerticalStackViewSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalStackViewSwiftUIView()
    }
}
