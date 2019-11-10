//
//  GamesStore.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation
import Combine

class GamesSearchService: ObservableObject {
    @Published var games: [Game] = []
    
    private var lastQuery = ""
    private var page = 1
    private var offset = 0
    private var totalResults = 100
    
    private let service: GiantbombService
    init(service: GiantbombService) {
        self.service = service
    }
    
    func searchForGames(query: String) {
        if lastQuery != query {
            page = 1
            lastQuery = query
            offset = 0
            totalResults = 100
            games = []
        }
        
        if offset > totalResults {
            return
        }
        
        service.search(matching: query, pageNumber: page) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let result):
                    if let result = result {
                        self?.games.append(contentsOf: result.results)
                        self?.offset = result.offset
                        self?.totalResults = result.number_of_total_results
                        self?.page += 1
                    }
                case .failure: return
                }
            }
        }
    }
}
