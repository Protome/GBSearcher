//
//  Show.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

public struct Show: Decodable, Identifiable {
    public let id: Int?
    public let guid: String?
    public let api_detail_url: URL?
    public let title: String?
    public let site_detail_url: URL?
    public let position: Int?
    public let image: Image?
}

