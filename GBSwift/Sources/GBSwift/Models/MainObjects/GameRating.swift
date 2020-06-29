//
//  GameRating.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

public struct GameRating: Decodable, Identifiable {
    public let id: Int?
    public let api_detail_url: URL?
    public let guid: String?
    public let image: Image?
    public let name: String?
    public let rating_board: [RatingBoard]?
}
