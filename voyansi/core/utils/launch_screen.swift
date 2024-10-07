//
//  launch_view.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 28/09/24.
//

import SwiftUI

struct LaunchScreen: View {
    @Environment(\.layoutprops) var layoutprops: LayoutProps
    var body: some View {
        ZStack {
            Color.vtheme.bg.ignoresSafeArea()
            
            if(!layoutprops.isIpad && !layoutprops.isLandScape){
                Image("logo").resizable().aspectRatio(contentMode: .fit)
            }
            else{
                Image("logo").aspectRatio(contentMode: .fit)
            }
            
            
            VCircularIndicator()
                .offset(y: layoutprops.size.height * 0.25)
            
            
        }
        
    }
}

#Preview {
    LaunchScreen()
}
