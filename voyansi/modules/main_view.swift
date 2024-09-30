//
//  ContentView.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 18/09/24.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        LayoutView { props in
//            LoginScreen()
            LaunchScreen(props:props)
        }
    }
}

#Preview {
    MainView()
}
