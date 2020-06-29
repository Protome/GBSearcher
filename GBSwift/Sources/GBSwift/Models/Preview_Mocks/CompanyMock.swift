//
//  CompanyMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension Company {
    static public func CreateMock() -> Company {
        return Company(id: 0,
                api_detail_url: URL(string: "www.giantbomb.com"),
                date_added: "2008-05-06 16:41:28",
                date_last_updated: "2008-05-06 16:41:28",
                deck: "deck",
                description: "description",
                guid: "guid",
                image: Image.CreateMock(),
                image_tags: [ImageTags.CreateMock()],
                name: "John",
                site_detail_url: URL(string: "www.giantbomb.com"),
                abbreviation: "abbreviation",
                aliases: "alias",
                characters: [Character.CreateMock()],
                concepts: [Concept.CreateMock()],
                date_founded: nil, //"2008-05-06 16:41:28",
                developed_games: nil,
                developer_releases: nil,
                distributor_releases: nil,
                location_address: "address",
                location_city: "city",
                location_country: "country",
                location_state: "state",
                locations: nil,
                objects: nil,
                phone: "00000000000000",
                published_games: nil,
                publisher_releases: nil,
                website: URL(string: "www.giantbomb.com"))
    }
}
