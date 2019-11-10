//
//  GameDetailsStore.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation
import Combine

class GameDetailsStore: ObservableObject {
    @Published var gameDetails: GameDetails?
    @Published var gameImages: [SingleImageObject] = []
    @Published var gameVideos: [GBObject] = []
    
    private var lastQuery = ""
    private var page = 1
    private var offset = 0
    private var totalResults = 100
    
    private let service: GiantbombService
    init(service: GiantbombService) {
        self.service = service
    }
    
    func fetch(gameId: String) {
        service.fetchGameData(gameId: gameId) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let result):
                    if let result = result {
                        self?.gameDetails = result.results
                        
                        var images: [SingleImageObject] = []
                        if let imageList = result.results.images {
                            for i in 0..<imageList.count {
                                images.append(SingleImageObject(id: i, imageUrl: imageList[i].screen_url.absoluteString, thumbnailUrl: imageList[i].thumb_url.absoluteString ))
                            }
                        }
                        self?.gameImages = images
                        self?.gameVideos = result.results.videos?.reversed() ?? []
                    }
                case .failure: return
                }
            }
        }
    }
}
