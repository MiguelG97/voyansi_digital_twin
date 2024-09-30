//
//  layout.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 27/09/24.
//
import UIKit
import SwiftUI

struct LayoutView<Content: View>: View {

    var content: (_ props: LayoutProps)->Content
    init(@ViewBuilder content: @escaping (_ props: LayoutProps)-> Content) {
        self.content = content
    }
    
    var body: some View {
        GeometryReader { proxy in
            let size: CGSize = proxy.size
            let isLandscape = size.width>size.height
            let isIpad = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad
//            let _ = print(size.height)
            
            content(LayoutProps(isLandScape: isLandscape, isIpad: isIpad,size: size))
                .frame(width: size.width, height: size.height)
        }
    }
    
    
}

struct LayoutProps {
    var isLandScape: Bool
    var isIpad: Bool
    var size: CGSize
}

#Preview {
    LayoutView { props in
        Text("das")
    }
}
