//
//  AgeRatings.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

public struct AgeRatings: Decodable, Identifiable {
    public let id: Int?
    public let name: String?
    public let api_detail_url: URL?
}
