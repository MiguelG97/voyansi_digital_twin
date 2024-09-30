//
//  launch_view.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 28/09/24.
//

import SwiftUI

struct LaunchScreen: View {
    var props: LayoutProps
    var body: some View {
        ZStack {
            Color.vtheme.bg.ignoresSafeArea()
            
            if(!props.isIpad && !props.isLandScape){
                Image("logo").resizable().aspectRatio(contentMode: .fit)
            }
            else{
                Image("logo").aspectRatio(contentMode: .fit)
            }
            
            
            VCircularIndicator()
                .offset(y: props.size.height * 0.25)
            
            
        }
        
    }
}

#Preview {
    LaunchScreen(props: LayoutProps(isLandScape: false, isIpad: false, size: CGSize(width: 400, height: 759)))
}
