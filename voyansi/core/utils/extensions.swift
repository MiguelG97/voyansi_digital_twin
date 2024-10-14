//
//  extensions.swift
//  voyansi
//
//  Created by Miguel Gutiérrez on 6/10/24.
//

import Foundation
import SwiftUI

extension EnvironmentValues {
    @Entry var layoutprops: LayoutProps = LayoutProps(isLandScape: false, isIpad: true, size: CGSize(width: 1327, height: 1032), safeArea: EdgeInsets(top: 62, leading: 0, bottom: 34, trailing: 0))
    //300, 500 for iphone, r u sure??
    //1327, 1032  ipad 13 pro in landscape
}
