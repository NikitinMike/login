//
//  Item.swift
//  login
//
//  Created by МИХАИЛ on 03.10.2024.
//

struct Item : Decodable {
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        xrealip = try values.decode(String.self, forKey: .xrealip)
        acceptlanguage = try values.decode(String.self, forKey: .acceptlanguage)
        xforwardedfor = try values.decode(String.self, forKey: .xforwardedfor)
        useragent = try values.decode(String.self, forKey: .useragent)
        acceptencoding = try values.decode(String.self, forKey: .acceptencoding)
        host = try values.decode(String.self, forKey: .host)
        connection = try values.decode(String.self, forKey: .connection)
        accept = try values.decode(String.self, forKey: .accept)
    }
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
    enum CodingKeys: String, CodingKey {
        case accept
        case host
        case connection
        case xrealip = "x-real-ip"
        case acceptlanguage = "accept-language"
        case useragent = "user-agent"
        case xforwardedfor = "x-forwarded-for"
        case acceptencoding = "accept-encoding"
    }
}
