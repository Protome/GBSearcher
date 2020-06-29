//
//  Character.swift
//  
//
//  Created by Kieran Bamford on 14/12/2019.
//

import Foundation

public struct Character: BaseObject {
    public let id: Int?
    public let api_detail_url: URL?
    public let date_added: String?
    public let date_last_updated: String?
    public let deck: String?
    public let description: String?
    public let guid: String?
    public let image: Image?
    public let name: String?
    public let site_detail_url: URL?
    
    public let image_tags: [ImageTags]?
    public let aliases: String?
    public let birthday: String? //Date
    public let concepts: [Concept]?
    public let enemies: [Character]?
    public let first_appeared_in_game: [Game]?
    public let franchises: [Franchise]?
    public let friends: [Character]?
    public let games: [Game]?
    public let gender: Gender
    public let last_name: String?
    public let locations: [Location]?
    public let objects: [Object]?
    public let people: [GBObject]?
    public let real_name: String?
}
