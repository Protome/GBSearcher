//
//  AgeRatingsMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension AgeRatings {
    public static func CreateMock() -> AgeRatings {
        return AgeRatings(id: 1,
                          name: "age rating",
                          api_detail_url: URL(string: "www.giantbomb.com"))
    }
}
