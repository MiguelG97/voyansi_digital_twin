//
//  custom_spacer.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 6/10/24.
//

import SwiftUI

struct VSpacer: View {
    var height : CGFloat = 12
    var body: some View {
        VStack{}.frame(maxWidth: .infinity,maxHeight: height)
    }
}

struct HSpacer: View {
    var width : CGFloat = 12
    var body: some View {
        HStack{}.frame(maxWidth: width,maxHeight: .infinity)
    }
}

