//
//  MultipleSwiftUIView.swift
//  SwiftUIDemo
//
//  Created by Anmol Chauhan on 19/03/20.
//  Copyright © 2020 Anmol Chauhan. All rights reserved.
//

import SwiftUI

struct MultipleSwiftUIView: View {
    var body: some View {
        Text("Multiple Device view for SwiftUI")
        
    }
}

struct MultipleSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
                MultipleSwiftUIView()
                .previewDevice(PreviewDevice.init(rawValue: "iPhone 6s"))
                .previewDisplayName("iPhone 6s")
        
                MultipleSwiftUIView()
                .previewDevice(PreviewDevice.init(rawValue: "iPhone 8"))
                .previewDisplayName("iPhone 8")
                   
                MultipleSwiftUIView()
               .previewDevice(PreviewDevice.init(rawValue: "iPhone 8 Plus"))
                .previewDisplayName("iPhone  8 Plus")
            
                MultipleSwiftUIView()
                .previewDevice(PreviewDevice.init(rawValue: "iPhone 11"))
                .previewDisplayName("iPhone 11")
            
                MultipleSwiftUIView()
                .previewDevice(PreviewDevice.init(rawValue: "iPhone 11 Pro"))
                 .previewDisplayName("iPhone 11 Pro")
            
                MultipleSwiftUIView()
            
    }
}
}
