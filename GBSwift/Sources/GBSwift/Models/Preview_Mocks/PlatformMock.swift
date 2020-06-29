//
//  PlatformMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension Platform {
    public static func CreateMock() -> Platform {
        return Platform(id: 1,
                        name: "Gamecube",
                        api_detail_url: URL(string: "www.giantbomb.com"),
                        site_detail_url: URL(string: "www.giantbomb.com"),
                        abbreviation: "GCN")
    }
}
