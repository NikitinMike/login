//
//  Retro.swift
//  login
//
//  Created by МИХАИЛ on 01.10.2024.
//

import RetroSwift
import OkHttpClient
import Foundation

struct Retro {
//    protocol HTTPClient {
//        func execute<T: Decodable>(request: URLRequest) async throws -> T
//    }

//    typealias Item = String
    func getItem(url: String) async throws -> String {
//        @Header(name: "Content-Type") var contentType = "application/string"
        //        @Path(path: url) var path
        let logger = SimpleLogger()
        let client = OkHttpClient(logger: logger)
        let retro = RetroSwift(client: client)
        print(retro)
        @GET(baseURL: url) var request
        print("===========")
        print(request)
        print("------------")
        return try await retro.execute(request: request)
    }

//    func task() {
//        text = try await getItem(url:url)
//        func getItem(url: String) async throws -> String {
//    //        @Header(name: "Content-Type") var contentType = "application/string"
//            //        @Path(path: url) var path
//            let retro = RetroSwift(client: OkHttpClient(logger: SimpleLogger()))
//            @GET(baseURL: url) var request
//            return try await retro.execute(request: request)
//        }
//    }
    
//    var text : String
    mutating func getText(url : String) {
        var request = URLRequest(url:URL(string: url)!)
        request.setValue("iYOBA Client 2.0", forHTTPHeaderField: "user-agent")
        let task = URLSession.shared.dataTask(with: request) {
            (data, response, error) in guard let data = data else { return }
            var text = Date.now.formatted(date: .omitted, time: .standard) + " " + (String(data: data, encoding: .utf8)!)
//            text.replace("\",\"", with:"\n")
//            text.replace("\":\"", with:" : ")
        }
    //        task.resume()
        // print(YOBAClient().getText(url: url))
//        Task {
//            print("===========")
//            text = try! await Retro().getItem(url:url)
//            print(text)
//            print("------------")
//        }
    }
    
}
