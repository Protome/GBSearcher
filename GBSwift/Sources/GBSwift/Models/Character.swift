//
//  File.swift
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
    public let image: Images?
    public let image_tags: [ImageTags]?
    public let name: String?
    public let site_detail_url: URL?
    
    public let aliases: String?
    public let birthday: String? //Date
    public let concepts: [GBObject]?
    public let enemies: [GBObject]?
    public let first_appeared_in_game: [GBObject]?
    public let franchises: [GBObject]?
    public let friends: [GBObject]?
    public let games: [GBObject]?
    public let gender: Gender
    public let last_name: String?
    public let locations: [GBObject]?
    public let objects: [GBObject]?
    public let people: [GBObject]?
    public let real_name: String?
}
