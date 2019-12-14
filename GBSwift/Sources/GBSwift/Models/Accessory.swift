//
//  File.swift
//  
//
//  Created by Kieran Bamford on 14/12/2019.
//

import Foundation

public struct Accessory: BaseObject {
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
}
