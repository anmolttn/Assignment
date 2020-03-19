//
//  HorizontalStackSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Anmol Chauhan on 19/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import SwiftUI

struct HorizontalStackSwiftUIView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 40.0) {
             Text("Horizontal Stack view 1")
                 .padding(20.0)
                 .lineLimit(nil)
                .background(Color.red)
             Text("Horizontal Stack View 2")
                 .padding(20.0)
                 .lineLimit(nil)
                .background(Color.yellow)

         }
         .padding(.all, 20.0)
    }
}

struct HorizontalStackSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalStackSwiftUIView()
    }
}
