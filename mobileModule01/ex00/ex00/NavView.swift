//
//  NavView.swift
//  ex00
//
//  Created by 구재우 on 2023/09/15.
//

import SwiftUI

struct NavView: View
{
    @Binding var showMenu: Bool
    @State private var searchText = ""
    @State private var inputText = ""
    
    var body: some View
    {
        NavigationView {
            VStack{
                SearchBar(text: $searchText, inputText: $inputText)
                    .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                MainView(text: $inputText)
                    .disabled(self.showMenu ? true : false)
            }
        }
    }
}
