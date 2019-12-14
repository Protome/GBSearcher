//
//  SearchResponse.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

public struct GBApiResponse<Element: Decodable> : Decodable {
    public let error: String
    public let limit: Int
    public let offset: Int
    public let number_of_page_results: Int
    public let number_of_total_results: Int
    public let status_code: Int
    public let results: Element?
    public let version: String
}

public struct GBApiListResponse<Element: Decodable> : Decodable  {
    public let error: String
    public let limit: Int
    public let offset: Int
    public let number_of_page_results: Int
    public let number_of_total_results: Int
    public let status_code: Int
    public let results: [Element]
    public let version: String
}
