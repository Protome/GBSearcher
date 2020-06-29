//
//  AccessoryMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension Accessory {
    static public func CreateMock() -> Accessory {
        return Accessory(id: 0,
                         api_detail_url: URL(string: "www.giantbomb.com"),
                         date_added: "",
                         date_last_updated: "",
                         deck: "Deck",
                         description: "Description",
                         guid: "guid",
                         image: Image.CreateMock(),
                         image_tags: [ImageTags.CreateMock()],
                         name: "name",
                         site_detail_url: URL(string: "www.giantbomb.com"))
    }
}
