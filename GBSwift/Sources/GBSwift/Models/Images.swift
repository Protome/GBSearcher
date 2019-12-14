//
//  Images.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

public struct Images: Decodable {
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

    public init(icon_url: URL, medium_url: URL, screen_url: URL, screen_large_url: URL?, small_url: URL, super_url: URL, thumb_url: URL, tiny_url: URL, original_url: URL?, image_tags: String?) {
        self.icon_url = icon_url
        self.medium_url = medium_url
        self.screen_url = screen_url
        self.screen_large_url = screen_large_url
        self.small_url = small_url
        self.super_url = super_url
        self.thumb_url = thumb_url
        self.tiny_url = tiny_url
        self.original_url = original_url
        self.image_tags = image_tags
    }
}
