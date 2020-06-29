//
//  GameDetailsStore.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation
import Combine
import GBSwift

class GameDetailsStore: ObservableObject {
    @Published var game: Game?
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
                        guard let resultsList = result.results else { return }
                        self?.game = result.results
                        
                        var images: [SingleImageObject] = []
                        if let imageList = resultsList.images {
                            for i in 0..<imageList.count {
                                images.append(SingleImageObject(id: i, imageUrl: imageList[i].super_url.absoluteString, thumbnailUrl: imageList[i].thumb_url.absoluteString ))
                            }
                        }
                        self?.gameImages = images
                        self?.gameVideos = resultsList.videos?.reversed() ?? []
                    }
                case .failure: return
                }
            }
        }
    }
}
