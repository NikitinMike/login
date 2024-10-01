//
//  ContentView.swift
//  login
//
//  Created by МИХАИЛ on 20.09.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var text : String = "nobody buisness"
    let url = "https://auth.olabank.ru/v1/security-oauth-server/" // "http://www.apple.com"
    
    var body: some View {
        VStack {
            Button("", systemImage: "brain", action: {getText(url: url)})
                .imageScale(.large)
                .foregroundStyle(.indigo)
                .font(.system(size: 44))
            Text(text)
        }
        .padding()
    }
        
    func test(url: String) async {
        let text = try! await Retro().getItem(url:url)
        print(text)
    }
    
    func getText(url : String) {
        var request = URLRequest(url:URL(string: url)!)
        request.setValue("iYOBA Client 2.0", forHTTPHeaderField: "user-agent")
        let task = URLSession.shared.dataTask(with: request) {
            (data, response, error) in guard let data = data else { return }
            text = Date.now.formatted(date: .omitted, time: .standard) + " " + (String(data: data, encoding: .utf8)!)
            text.replace("\",\"", with:"\n")
            text.replace("\":\"", with:" : ")
        }
        task.resume()
        // print(YOBAClient().getText(url: url))
//        try await test()
    }
    
}

#Preview {
    ContentView()
}
