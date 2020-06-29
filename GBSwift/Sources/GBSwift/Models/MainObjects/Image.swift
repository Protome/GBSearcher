//
//  Images.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

public struct Image: Decodable {
    public let icon_url: URL
    public let medium_url: URL
    public let screen_url: URL
    public let screen_large_url: URL?
    public let small_url: URL
    public let super_url: URL
    public let thumb_url: URL
    public let tiny_url: URL
    public let original_url: URL?
    public let image_tags: String?
}
