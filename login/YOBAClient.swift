//
//  YOBAClient.swift
//  login
//
//  Created by МИХАИЛ on 23.09.2024.
//

import Foundation

import UIKit
import SwiftUICore
import WebKit

struct YOBAClient {
    @State var text = "nobody"
    func getText(url : String) -> String {
        var request = URLRequest(url:URL(string: url)!)
        request.setValue("iYOBA Client 2.0", forHTTPHeaderField: "user-agent")
        let task = URLSession.shared.dataTask(with: request) {
            (data, response, error) in guard let data = data else { return }
            text = Date.now.formatted(date: .omitted, time: .standard) + ":" + (String(data: data, encoding: .utf8)!)
        }
        task.resume()
        print(text)
        return text
    }
}
