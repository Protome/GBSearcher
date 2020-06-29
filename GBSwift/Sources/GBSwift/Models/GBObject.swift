//
//  GBObject.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

public struct GBObject: Decodable, Identifiable {
    public let id: Int
    public let guid: String?
    public let api_detail_url: URL?
    public let name: String?
    public let site_detail_url: URL?
}

extension GBObject {
    public static func CreateMock() -> GBObject {
        return GBObject(id: 0,
                        guid: "0",
                        api_detail_url: URL(string: "www.giantbomb.com"),
                        name: "Object",
                        site_detail_url: URL(string: "www.giantbomb.com"))
    }
}
