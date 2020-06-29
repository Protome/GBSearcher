//
//  ImageTagsMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension ImageTags {
    public static func CreateMock() -> ImageTags {
        return ImageTags(total: 1,
                         name: "Tag",
                         api_detail_url: URL(string: "www.giantbomb.com"))
    }
}
