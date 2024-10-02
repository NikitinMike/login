//
//  Retro.swift
//  login
//
//  Created by МИХАИЛ on 01.10.2024.
//

import RetroSwift
import OkHttpClient

struct Retro {
    typealias Item = String
    func getItem(url: String) async throws -> Item {
        //        @Header(name: "Content-Type") var contentType = "application/json"
        //        @Path(path: url) var path
        @GET(baseURL: url) var request
        return try! await RetroSwift(client: OkHttpClient()).execute(request: request)
    }
}
