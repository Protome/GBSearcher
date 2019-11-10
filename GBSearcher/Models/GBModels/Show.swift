//
//  Show.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

struct Show: Decodable, Identifiable {
    var id: Int
    let guid: String?
    let api_detail_url: URL?
    let title: String?
    let site_detail_url: URL?
    let position: Int?
    let image: Images?
}

