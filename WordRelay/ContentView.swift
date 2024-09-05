//
//  ContentView.swift
//  WordRelay
//
//  Created by 김두운 on 9/4/24.
//

import SwiftUI

struct ContentView: View {
    
    let title: String = "끝말잇기 게임"
    @State var nextWord: String = ""
    var words: [String] = ["물컵", "컵받침", "침착맨"]
    
    var body: some View {
        VStack {
            Text(title)
                .font(.title)
                .bold()
                .padding(.vertical, 16)
                .padding(.horizontal, 20)
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.teal)
                        .opacity(0.2)
                        .shadow(radius: 5)
                )
            .padding(.top, 10)
            Text(nextWord)
            HStack(spacing: 12) {
                TextField("단어를 입력하세요", text: $nextWord)
                    .padding(12)
                    .border(Color.black, width: 1.5)
                    .padding(.vertical, 4)
                .padding(.leading, 12)
                Button(action: {
                    // 동작
                    print(nextWord)
                    nextWord = ""
                }, label: {
                    Text("확인")
                })
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
                .foregroundStyle(Color.white)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.blue)
                )
                .padding(.trailing, 6)
            }
            .padding(.horizontal, 6)

            List {
                ForEach(words.reversed(), id: \.self) { word in
                    Text(word)
                }
            }
            .listStyle(.plain)
        }
        Spacer()
    }
}

#Preview {
    ContentView()
}
