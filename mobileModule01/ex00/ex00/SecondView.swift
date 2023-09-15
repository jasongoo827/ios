//
//  SecondView.swift
//  ex00
//
//  Created by 구재우 on 2023/09/15.
//

import SwiftUI

struct SecondView: View
{
    @Binding var text: String
    var body: some View
    {
        Text("Today" + text)
    }
}
