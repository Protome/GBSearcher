//
//  AgeRatings.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

struct AgeRatings: Decodable, Identifiable {
    var id: Int?
    let api_detail_url: URL?
    let name: String?
}
