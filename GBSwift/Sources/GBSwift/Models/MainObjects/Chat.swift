//
//  Chat.swift
//  
//
//  Created by Kieran Bamford on 14/12/2019.
//

import Foundation

public struct Chat: BaseObject {
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
    
    public let channel_name: String?
    public let password: String?
    public let title: String?
}
