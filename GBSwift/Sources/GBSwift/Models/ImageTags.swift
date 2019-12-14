//
//  ImageTags.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

public struct ImageTags: Decodable {
    let total: Int?
    let name: String?
    let api_detail_url: URL?
}
