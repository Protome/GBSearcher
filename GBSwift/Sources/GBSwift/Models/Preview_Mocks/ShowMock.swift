//
//  ShowMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension Show {
    static public func CreateMock() -> Show {
        return Show(id: 0,
                    guid: "0",
                    api_detail_url: URL(string:"www.giantbomb.com"),
                    title: "Show",
                    site_detail_url: URL(string: "www.giantbomb.com"),
                    position: 0,
                    image: Image.CreateMock())
    }
}
