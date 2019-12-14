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
    public let image: Images
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

    public init(id: Int, api_detail_url: URL?, associations: [GBObject]?, deck: String?, embed_player: URL, guid: String?, length_seconds: Int, name: String?, premium: Bool, publish_date: String?, site_detail_url: URL?, image: Images, user: String?, hosts: String?, crew: String?, video_type: String?, video_show: Show?, video_categories: [GBObject]?, savedTime: Int?, youtube_id: URL?, hd_url: URL?, high_url: URL?, low_url: URL?, url: URL?) {
        self.id = id
        self.api_detail_url = api_detail_url
        self.associations = associations
        self.deck = deck
        self.embed_player = embed_player
        self.guid = guid
        self.length_seconds = length_seconds
        self.name = name
        self.premium = premium
        self.publish_date = publish_date
        self.site_detail_url = site_detail_url
        self.image = image
        self.user = user
        self.hosts = hosts
        self.crew = crew
        self.video_type = video_type
        self.video_show = video_show
        self.video_categories = video_categories
        self.savedTime = savedTime
        self.youtube_id = youtube_id
        self.hd_url = hd_url
        self.high_url = high_url
        self.low_url = low_url
        self.url = url
    }
}
