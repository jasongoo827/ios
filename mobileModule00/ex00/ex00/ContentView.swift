//
//  ContentView.swift
//  ex00
//
//  Created by 구재우 on 2023/08/28.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonPressed = false
    
    var body: some View {
        VStack {
            Text("A simple text")
                .font(.system(size: 30))
                .padding(EdgeInsets(top: 10, leading: 5, bottom: 10, trailing: 5))
                .background(Color.green)
                .foregroundColor(.white)
                .cornerRadius(10)
            Button(action: {
                buttonPressed.toggle()
                print("Button Pressed")
            }){
                Text("Click Me")
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
