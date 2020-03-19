//
//  ImageSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Anmol Chauhan on 19/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import SwiftUI

struct ImageSwiftUIView: View {
    var body: some View {
        Image("image1")
        .resizable()
        .frame(width: 200, height: 300)
    }
}

struct ImageSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        ImageSwiftUIView()
    }
}
