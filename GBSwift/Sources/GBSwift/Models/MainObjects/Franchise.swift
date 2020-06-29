//
//  Franchise.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

public struct Franchise: BaseObject {
    public let id: Int?
    public let api_detail_url: URL?
    public let date_added: String?
    public let date_last_updated: String?
    public let deck: String?
    public let description: String?
    public let guid: String?
    public let image: Image?
    public let image_tags: [ImageTags]?
    public let name: String?
    public let site_detail_url: URL?
    
    public let aliases: String?
    public let characters: [Character]?
    public let concepts: [Concept]?
    public let games: [Game]?
    public let locations: [Location]?
    public let objects: [Object]?
//    public let people: [Person]?
}
