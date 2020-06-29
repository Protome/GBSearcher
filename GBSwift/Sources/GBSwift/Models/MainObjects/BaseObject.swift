//
//  BaseObject.swift
//  
//
//  Created by Kieran Bamford on 14/12/2019.
//

import Foundation

public protocol BaseObject: Decodable, Identifiable {
    var id: Int? { get }
    var api_detail_url: URL? { get }
    var date_added: String? { get } //Date
    var date_last_updated: String? { get } //Date
    var deck: String? { get }
    var description: String? { get }
    var guid: String? { get }
    var image: Image? { get }
    var image_tags: [ImageTags]? { get }
    var name: String? { get }
    var site_detail_url: URL? { get }
}
