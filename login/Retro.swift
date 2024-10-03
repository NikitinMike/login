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

    struct Item : Codable {
        var xrealip :String
//        var secfetchmode :String
//        var secfetchsite :String
        var acceptlanguage :String
        var host :String
        var connection :String
        var xforwardedfor :String
        var acceptencoding :String
        var accept :String
        var useragent :String
//        var secfetchdest :String
    }
    
//    protocol HTTPClient {
//        func execute<Item: Decodable>(request: URLRequest) async throws -> Item
//    }
    
    func getItem(url: String) async throws -> Item {
//        @Header(name: "Content-Type") var contentType = "application/string"
        //        @Path(path: url) var path
//        let retro = RetroSwift(client: OkHttpClient(logger: SimpleLogger()))
        @GET(baseURL: url) var request
        return try! await RetroSwift(client: OkHttpClient()).execute(request: request)
    }
    
}
