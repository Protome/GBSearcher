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
    
    public init(id: Int, guid: String?, apiUrl: URL?, name: String?, siteUrl: URL?)
    {
        self.id = id
        self.guid = guid
        self.api_detail_url = apiUrl
        self.name = name
        self.site_detail_url = siteUrl
    }
}
