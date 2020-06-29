//
//  Company.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

public struct Company: BaseObject {
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
    
    public let abbreviation: String?
    public let aliases: String?  //TODO: Make this a list  //List of aliases the company is known by. A \n (newline) seperates each alias.
    public let characters: [Character]?
    public let concepts: [Concept]?
    public let date_founded: Date?
    public let developed_games: [Game]?
    public let developer_releases: [Game]?
    public let distributor_releases: [Game]?
    public let location_address: String?
    public let location_city: String?
    public let location_country: String?
    public let location_state: String?
    public let locations: [Location]?
    public let objects: [Object]?
//    public let people: [People]?
    public let phone: String?
    public let published_games: [Game]?
    public let publisher_releases: [Game]?
    public let website: URL?
}
