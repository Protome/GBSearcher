//
//  CharacterMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension Character {
    static public func CreateMock() -> Character {
        return Character(id: 0,
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
                  birthday: "2008-05-06 16:41:28",
                  concepts: [Concept.CreateMock()],
                  enemies: nil,
                  first_appeared_in_game: [Game.CreateMock()],
                  franchises: [GBObject.CreateMock()],
                  friends: [GBObject.CreateMock()],
                  games: [GBObject.CreateMock()],
                  gender: Gender.Other,
                  last_name: "Smith",
                  locations: [GBObject.CreateMock()],
                  objects: [GBObject.CreateMock()],
                  people: [GBObject.CreateMock()],
                  real_name: "John Smith")
    }
}
