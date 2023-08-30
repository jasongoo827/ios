//
//  ContentView.swift
//  ex01
//
//  Created by 구재우 on 2023/08/30.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonPressed = false
    @State private var initialText = "A simple text"
    @State private var switchText = "Hello World"
    @State private var buttonText = "Click Me"
    
    var body: some View {
        VStack {
            Text(initialText)
                .font(.system(size: 30))
                .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            Button(action: {
                buttonPressed.toggle()
                if (buttonPressed)
                {
                    initialText = switchText
                }
                else
                {
                    initialText = "A simple text"
                }
                print("Button Pressed")
            }){
                Text(buttonText)
                    .font(.system(size: 15))
                    .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
                    .background(Color.white)
                    .foregroundColor(.green)
                    .cornerRadius(10)
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
        .background(Color.gray.opacity(0.2))
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
