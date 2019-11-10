//
//  SingleImageObject.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

struct SingleImageObject: Decodable, Identifiable {
    let id: Int
    let imageUrl: String?
    let thumbnailUrl: String?
}
