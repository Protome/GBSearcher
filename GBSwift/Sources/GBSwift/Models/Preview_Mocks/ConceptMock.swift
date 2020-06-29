//
//  ConceptMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension Concept {
    static public func CreateMock() -> Concept {
        return Concept(id: 0,
                       api_detail_url: URL(string: "www.giantbomb.com"),
                       date_added: "2008-05-06 16:41:28",
                       date_last_updated: "2008-05-06 16:41:28",
                       deck: "deck",
                       description: "description",
                       guid: "guid",
                       image: Image.CreateMock(),
                       name: "John",
                       site_detail_url: URL(string: "www.giantbomb.com"),
                       image_tags: [ImageTags.CreateMock()],
                       aliases: "aliases",
                       characters: nil,
                       concepts: nil,
                       first_appeared_in_franchise: nil,
                       first_appeared_in_game: nil,
                       franchises: nil,
                       games: nil,
                       locations: nil,
                       objects: nil,
                       related_concepts: nil)
    }
}
