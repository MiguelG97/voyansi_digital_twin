//
//  layout.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 27/09/24.
//
import UIKit
import SwiftUI

struct LayoutView<Content: View>: View {

    var content: ()->Content
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        GeometryReader { proxy in
            let size: CGSize = proxy.size
            let isLandscape = size.width>size.height
            let isIpad = UIDevice.current.userInterfaceIdiom == UIUserInterfaceIdiom.pad
//            let _ = print(proxy.safeAreaInsets,proxy.safeAreaInsets.bottom)
            
            content()
                .frame(width: size.width, height: size.height)
                .environment(\.layoutprops, LayoutProps(isLandScape: isLandscape, isIpad: isIpad, size: size,safeArea: proxy.safeAreaInsets))
        }
    }
    
    
}

struct LayoutProps {
    var isLandScape: Bool
    var isIpad: Bool
    var size: CGSize
    var safeArea: EdgeInsets
}

#Preview {
    LayoutView {
        Text("das")
    }
}
