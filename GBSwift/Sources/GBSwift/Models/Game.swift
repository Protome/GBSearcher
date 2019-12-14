//
//  Game.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

public struct Game: Decodable, Identifiable {
    public let id: Int?
    public let aliases: String?
    public let api_detail_url: URL?
    public let date_added: String? //Date
    public let date_last_updated: String? //Date
    public let deck: String?
    public let description: String?
    public let expected_release_day: Int?
    public let expected_release_month: Int?
    public let expected_release_quarter: Int?
    public let expected_release_year: Int?
    public let guid: String?
    public let image: Images?
    public let image_tags: [ImageTags]?
    public let name: String?
    public let number_of_user_reviews: Int?
    public let original_game_rating: [AgeRatings]?
    public let original_release_date: String?
    public let platforms: [Platform]?
    public let site_detail_url: URL?
    public let resource_type: String?

    public init(id: Int?, aliases: String?, api_detail_url: URL?, date_added: String?, date_last_updated: String?, deck: String?, description: String?, expected_release_day: Int?, expected_release_month: Int?, expected_release_quarter: Int?, expected_release_year: Int?, guid: String?, image: Images?, image_tags: [ImageTags]?, name: String?, number_of_user_reviews: Int?, original_game_rating: [AgeRatings]?, original_release_date: String?, platforms: [Platform]?, site_detail_url: URL?, resource_type: String?) {
        self.id = id
        self.aliases = aliases
        self.api_detail_url = api_detail_url
        self.date_added = date_added
        self.date_last_updated = date_last_updated
        self.deck = deck
        self.description = description
        self.expected_release_day = expected_release_day
        self.expected_release_month = expected_release_month
        self.expected_release_quarter = expected_release_quarter
        self.expected_release_year = expected_release_year
        self.guid = guid
        self.image = image
        self.image_tags = image_tags
        self.name = name
        self.number_of_user_reviews = number_of_user_reviews
        self.original_game_rating = original_game_rating
        self.original_release_date = original_release_date
        self.platforms = platforms
        self.site_detail_url = site_detail_url
        self.resource_type = resource_type
    }
}
