//
//  ContentView.swift
//  ex02
//
//  Created by 구재우 on 2023/08/30.
//

import SwiftUI

struct ContentView: View {
    let buttons = [
        ["7", "8", "9", "C", "AC"],
        ["4", "5", "6", "+", "-"],
        ["1", "2", "3", "*", "/"],
        ["0", ".", "00", "=", " "]
    ]
    
    @State var title = "Calculator"
    @State var result = "0"
    @State var display = "0"
    @State var val1 = ""
    @State var val2 = ""
    @State var op = ""
    @State var flag = true
    
    var body: some View {
        VStack {
            Text(title) // 가장 위에 배치
                .font(.title)
            Text(display) // 오른쪽 정렬
                .font(.title)
                .frame(maxWidth: .infinity, alignment:  .trailing)
            Text(result) // 오른쪽 정렬
                .font(.title)
                .frame(maxWidth: .infinity, alignment: .trailing)
            ForEach(buttons, id: \.self) {row in
                HStack(){
                    ForEach(row, id: \.self) { button in
                        Button (action: {
                            // 버튼 누를 때 action 함수
                            handlePressButton(button: button)
                        }, label: {
                            Text(button)
                                .font(.title)
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                        })
                    }
                }
            }
        }
    }
    
    func handlePressButton(button: String)
    {
        switch button
        {
        case "C":
            display = "0"
            val1 = ""
            val2 = ""
            op = ""
            flag = true
        case "AC":
            display = "0"
            val1 = ""
            val2 = ""
            op = ""
            result = "0"
            flag = true
        case "+", "-", "*", "/":
            val1 = display
            op = button
            flag = true
        case "=":
            val2 = display
            let ret = calculate()
            val1 = ""
            val2 = ""
            op = ""
            result = ret
            flag = true
        default:
            if(flag)
            {
                display = button
                flag = false
            }
            else
            {
                display += button
            }
        }
    }
    func calculate() -> String
    {
        if let a = Double(val1), let b = Double(val2)
        {
            switch(op)
            {
            case "+":
                return String(a + b)
            case "-":
                return String(a - b)
            case "*":
                return String(a * b)
                // 자리수 너무 커질때 예외 처리
            case "/":
                return String(a / b)
                // 나누기 예외
            default:
                return "Error"
            }
        }
        else
        {
            return "Error"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
