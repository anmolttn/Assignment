//
//  ButtonSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Anmol Chauhan on 19/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import SwiftUI

struct ButtonSwiftUIView: View {
    var body: some View {
                Button(action: {}, label: {
                    Text("SwiftUI Button")
                        .foregroundColor(.black)
                })
                    .padding(.all, 20.0)
                    .frame(width: 200.0)
                    .background(Color.red)
                    .cornerRadius(10)}
}

struct ButtonSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonSwiftUIView()
    }
}

