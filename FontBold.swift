//
//  FontBold.swift
//  StopSmokingStandard
//
//  Created by 이창형 on 2022/05/11.
//

import SwiftUI

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
struct ScaledFontBold: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    var size: CGFloat

    func body(content: Content) -> some View {
       let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        // UIkit 폰트 크기 받아서 화면 크기에 맞게 해줌 - UIFontMetrics
        return content.font(.system(size: scaledSize, weight: .bold))
    }
}

@available(iOS 13, macCatalyst 13, tvOS 13, watchOS 6, *)
extension View {
    func scaledFontBold(size: CGFloat) -> some View {
        return self.modifier(ScaledFontBold(size: size))
    }
}
