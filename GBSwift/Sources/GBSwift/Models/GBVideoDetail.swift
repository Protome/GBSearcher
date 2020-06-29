//
//  GBVideoDetail.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

public struct GBVideoDetail: Decodable, Identifiable {
    public let id: Int
    public let api_detail_url: URL?
    public let associations: [GBObject]?
    public let deck: String?
    public let embed_player:URL
    public let guid: String?
    public let length_seconds: Int
    public let name: String?
    public let premium: Bool
    public let publish_date: String?
    public let site_detail_url: URL?
    public let image: Image
    public let user: String?
    public let hosts: String?
    public let crew: String?
    public let video_type: String? //Enum
    public let video_show: Show?
    public let video_categories: [GBObject]?
    public let savedTime: Int?
    public let youtube_id: URL?
    public let hd_url: URL?
    public let high_url: URL?
    public let low_url: URL?
    public let url: URL?
}
