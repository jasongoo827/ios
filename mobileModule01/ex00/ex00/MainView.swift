//
//  MainView.swift
//  ex00
//
//  Created by 구재우 on 2023/09/15.
//

import SwiftUI

struct MainView: View
{
    @Binding var text: String
    
    var body: some View
    {
        ZStack{
            TabView {
                FirstView(text: $text)
                    .tabItem {
                        Label("Currently", systemImage: "desktopcomputer")
                    }
                SecondView(text: $text)
                    .tabItem {
                        Label("Today", systemImage: "desktopcomputer")
                    }
                ThirdView(text: $text)
                    .tabItem {
                        Label("Weekly", systemImage: "desktopcomputer")
                    }
            }
        }
    }
}
