//
//  SearchResponse.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

struct GBApiResponse<Element: Decodable> : Decodable {
    let error: String
    let limit: Int
    let offset: Int
    let number_of_page_results: Int
    let number_of_total_results: Int
    let status_code: Int
    let results: Element?
    let version: String
}

struct GBApiListResponse<Element: Decodable> : Decodable  {
    let error: String
    let limit: Int
    let offset: Int
    let number_of_page_results: Int
    let number_of_total_results: Int
    let status_code: Int
    let results: [Element]
    let version: String
}
