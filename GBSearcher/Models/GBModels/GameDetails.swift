//
//  GameDetails.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

struct GameDetails: Decodable, Identifiable {
    let id: Int
    let aliases: String?
    let api_detail_url: URL?
    let date_added: String? //Date
    let date_last_updated: String? //Date
    let deck: String?
    let description: String?
    let expected_release_day: Int?
    let expected_release_month: Int?
    let expected_release_quarter: Int?
    let expected_release_year: Int?
    let guid: String?
    let image: Images?
    let images: [Images]?
    let image_tags: [ImageTags]?
    let name: String?
    let number_of_user_reviews: Int?
    let original_game_rating: [AgeRatings]?
    let original_release_date: String?
    let platforms: [Platform]?
    let site_detail_url: URL?
    let resource_type: String?
    let videos: [GBObject]?
    let characters: [GBObject]?
    let concepts: [GBObject]?
    let developers: [GBObject]?
    let first_appearance_characters: [GBObject]?
    let first_appearance_concepts: [GBObject]?
    let first_appearance_locations: [GBObject]?
    let first_appearance_objects: [GBObject]?
    let first_appearance_people: [GBObject]?
    let franchises: [GBObject]?
    let genres: [GBObject]?
    let killed_characters: [GBObject]?
    let locations: [GBObject]?
    let objects: [GBObject]?
    let people: [GBObject]?
    let publishers: [GBObject]?
    let releases: [GBObject]?
    let dlcs: [GBObject]?
    let reviews: [GBObject]?
    let similar_games: [GBObject]?
    let themes: [GBObject]?
}
