//
//  FranchiseMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension Franchise {
    public static func CreateMock() -> Franchise {
        return Franchise(id: 0,
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
                         aliases: "aliases",
                         characters: [Character.CreateMock()],
                         concepts: [Concept.CreateMock()],
                         games: nil,
                         locations: nil,
                         objects: nil)
    }
}
