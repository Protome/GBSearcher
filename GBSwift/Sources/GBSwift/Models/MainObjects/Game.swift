//
//  Game.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

public struct Game: Decodable, Identifiable {
    public let id: Int
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
    public let image: Image?
    public let images: [Image]?
    public let image_tags: [ImageTags]?
    public let name: String?
    public let number_of_user_reviews: Int?
    public let original_game_rating: [AgeRatings]?
    public let original_release_date: String?
    public let platforms: [Platform]?
    public let site_detail_url: URL?
    public let resource_type: String?
    
    public let videos: [GBObject]?
    public let characters: [Character]?
    public let concepts: [Concept]?
    public let developers: [GBObject]?
    public let first_appearance_characters: [GBObject]?
    public let first_appearance_concepts: [GBObject]?
    public let first_appearance_locations: [GBObject]?
    public let first_appearance_objects: [GBObject]?
    public let first_appearance_people: [GBObject]?
    public let franchises: [Franchise]?
    public let genres: [Genre]?
    public let killed_characters: [GBObject]?
    public let locations: [GBObject]?
    public let objects: [GBObject]?
    public let people: [GBObject]?
    public let publishers: [GBObject]?
    public let releases: [GBObject]?
    public let dlcs: [Dlc]?
    public let reviews: [GBObject]?
    public let similar_games: [GBObject]?
    public let themes: [GBObject]?
}
