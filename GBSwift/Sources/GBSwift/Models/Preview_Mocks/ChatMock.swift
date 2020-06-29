//
//  ChatMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension Chat {
    static public func CreateMock() -> Chat {
        return Chat(id: 0,
                  api_detail_url: URL(string: "www.giantbomb.com"),
                  date_added: "2008-05-06 16:41:28",
                  date_last_updated: "2008-05-06 16:41:28",
                  deck: "deck",
                  description: "description",
                  guid: "guid",
                  image: Image.CreateMock(),
                  name: "John",
                  site_detail_url: URL(string: "www.giantbomb.com"),
                  channel_name: "Channel",
                  password: "None",
                  title: "Title"
        )
    }
}
