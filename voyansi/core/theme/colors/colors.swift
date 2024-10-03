//
//  colors.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 27/09/24.
//

import SwiftUI

extension Color{
    static let vtheme: VTheme = VTheme()
}

struct VTheme{
    let primary: Color = Color("v_primary")
    let bg: Color = Color("v_bg")
    let bg_100: Color = Color("v_bg_100")
    let icons: Color = Color("v_icons")
}
