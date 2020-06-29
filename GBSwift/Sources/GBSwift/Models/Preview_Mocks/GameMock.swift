//
//  GameMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension Game {
    public static func CreateMock() -> Game {
        return Game(id: 0,
                    aliases: "aliases",
                    api_detail_url: URL(string: "www.giantbomb.com"),
                    date_added: "2008-05-06 16:41:28",
                    date_last_updated: "2008-05-06 16:41:28",
                    deck: "Deck",
                    description: "Description",
                    expected_release_day: 0,
                    expected_release_month: 0,
                    expected_release_quarter: 0,
                    expected_release_year: 0,
                    guid: "guid",
                    image: Image.CreateMock(),
                    images: [Image.CreateMock(), Image.CreateMock()],
                    image_tags: [ImageTags.CreateMock(), ImageTags.CreateMock()],
                    name: "name",
                    number_of_user_reviews: 0,
                    original_game_rating: [AgeRatings.CreateMock(), AgeRatings.CreateMock()],
                    original_release_date: "2008-05-06 16:41:28",
                    platforms: [Platform.CreateMock(), Platform.CreateMock()],
                    site_detail_url: URL(string: "www.giantbomb.com"),
                    resource_type: "game",
                    videos: [GBObject.CreateMock(), GBObject.CreateMock()],
                    characters: [Character.CreateMock(), Character.CreateMock()],
                    concepts: [Concept.CreateMock(), Concept.CreateMock()],
                    developers: [GBObject.CreateMock(), GBObject.CreateMock()],
                    first_appearance_characters: [Character.CreateMock(), Character.CreateMock()],
                    first_appearance_concepts: [Concept.CreateMock(), Concept.CreateMock()],
                    first_appearance_locations: nil,
                    first_appearance_objects: nil,
                    first_appearance_people: [GBObject.CreateMock(), GBObject.CreateMock()],
                    franchises: [Franchise.CreateMock(), Franchise.CreateMock()],
                    genres: [Genre.CreateMock(), Genre.CreateMock()],
                    killed_characters: [Character.CreateMock(), Character.CreateMock()],
                    locations: nil,
                    objects: nil,
                    people: [GBObject.CreateMock(), GBObject.CreateMock()],
                    publishers: [Company.CreateMock(), Company.CreateMock()],
                    releases: [GBObject.CreateMock(), GBObject.CreateMock()],
                    dlcs: [Dlc.CreateMock(), Dlc.CreateMock()],
                    reviews: [GBObject.CreateMock(), GBObject.CreateMock()],
                    similar_games: nil,
                    themes: [GBObject.CreateMock(), GBObject.CreateMock()])
    }
}
