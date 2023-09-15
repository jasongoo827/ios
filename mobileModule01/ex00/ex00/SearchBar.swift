//
//  SearchBar.swift
//  ex00
//
//  Created by 구재우 on 2023/09/15.
//

import SwiftUI
 
struct SearchBar: View {
    
    @Binding var text: String
    @Binding var inputText: String
 
    var body: some View {
        HStack {
            HStack {
                Image(systemName: "magnifyingglass")
 
                TextField("Search", text: $text)
                    .foregroundColor(.primary)

                Button(action: {
                    inputText = text
                }, label: {Image(systemName: "circle")})
 
                if !text.isEmpty {
                    Button(action: {
                        self.text = ""
                    }) {
                        Image(systemName: "xmark.circle.fill")
                    }
                } else {
                    EmptyView()
                }
            }
            .padding(EdgeInsets(top: 4, leading: 8, bottom: 4, trailing: 8))
            .foregroundColor(.secondary)
            .background(Color(.secondarySystemBackground))
            .cornerRadius(10.0)
        }
        .padding(.horizontal)
    }
}
