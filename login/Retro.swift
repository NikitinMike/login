//
//  Retro.swift
//  login
//
//  Created by МИХАИЛ on 01.10.2024.
//

import RetroSwift

struct Retro {
    let retroSwift = RetroSwift(client: HTTPClient.self as! HTTPClient)
    typealias Item = String
    func getItem(url: String) async throws -> Item {
        //        @Path(path: url) var path
        @GET(baseURL: url) var request
        return try await retroSwift.execute(request: request)
    }
}
