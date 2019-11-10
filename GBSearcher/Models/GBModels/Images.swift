//
//  Images.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

struct Images: Decodable {
    let icon_url: URL
    let medium_url: URL
    let screen_url: URL
    let screen_large_url: URL?
    let small_url: URL
    let super_url: URL
    let thumb_url: URL
    let tiny_url: URL
    let original_url: URL?
    let image_tags: String?
}
