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
//        func execute<Item: Decodable>(request: URLRequest) async throws -> Item
//    }
    
    func getItem(url: String) async throws -> Item {
//        @Header(name: "user-agent") var userAgent = "iYOBA 1.0"
        //        @Path(path: url) var path
//        let logger = OkHttpClient(logger: SimpleLogger())
//        let retro = RetroSwift(client: OkHttpClient(logger: SimpleLogger()))
//        print(UserDefaults.standard) // ("user-agent", forKey: "iYOBank 1.0")
        @GET(baseURL: url) var request
        return try! await RetroSwift(client: OkHttpClient(logger:SimpleLogger())).execute(request: request)
    }
}
