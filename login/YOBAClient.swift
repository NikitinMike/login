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

class YOBAClient:  UIViewController, WKUIDelegate {
    @State var text = "nobody"
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string:"https://www.apple.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }
    
    func getText(url : String) -> String {
        let webConfiguration = WKWebViewConfiguration()
        let webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.customUserAgent = "ExampleApp/1.0 (iPhone)"
        let request = URLRequest(url:URL(string: url)!)
//        request.setValue("iYOBA Client 2.0", forHTTPHeaderField: "user-agent")
        let task = URLSession.shared.dataTask(with: request) {
            (data, response, error) in guard let data = data else { return }
            self.text = Date.now.formatted(date: .omitted, time: .standard) + ":" + (String(data: data, encoding: .utf8)!)
        }
        task.resume()
//        print("DEBUG YOBAClient: \(text)")
        return text
    }
}
