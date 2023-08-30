//
//  LabelStyle.swift
//  Scrumdinger
//
//  Created by 구재우 on 2023/08/30.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle
{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle
{
    static var trailingIcon: Self { Self() }
}
