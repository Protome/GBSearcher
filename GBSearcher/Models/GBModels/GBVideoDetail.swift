//
//  GBVideoDetail.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

struct GBVideoDetail: Decodable, Identifiable {
    let id: Int
    let api_detail_url: URL?
    let associations: [GBObject]?
    let deck: String?
    let embed_player:URL
    let guid: String?
    let length_seconds: Int
    let name: String?
    let premium: Bool
    let publish_date: String?
    let site_detail_url: URL?
    let image: Images
    let user: String?
    let hosts: String?
    let crew: String?
    let video_type: String? //Enum
    let video_show: Show?
    let video_categories: [GBObject]?
    let savedTime: Int?
    let youtube_id: URL?
    let hd_url: URL?
    let high_url: URL?
    let low_url: URL?
    let url: URL?
}
