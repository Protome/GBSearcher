//
//  VideoDetailStore.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation
import Combine
import GBSwift

struct UrlContainer: Decodable {
    let url: URL
}

class VideoDetailsStore: ObservableObject {
    @Published var videoDetails: GBVideoDetail?
    @Published var videoUrl: URL
    
    private let service: GiantbombService
    init(service: GiantbombService) {
        self.service = service
        self.videoUrl = URL(string: "https://static-giantbombvideo.cbsistatic.com/vr/video/TR_gravityrushtgs_091511_3500.mp4")!
    }
    
    func fetch(videoId: String) {
        service.fetchVideoData(videoId: videoId) { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let result):
                    if let result = result {
                        self?.videoDetails = result.results
                        
                        let videoUrl = result.results?.high_url?.absoluteString ?? result.results?.low_url?.absoluteString ??  "https://static-giantbombvideo.cbsistatic.com/vr/video/TR_gravityrushtgs_091511_3500.mp4"
                        guard
                            var urlComponents = URLComponents(string:videoUrl) else { return }
                        
                        urlComponents.queryItems = [
                                   URLQueryItem(name: "api_key", value: Bundle.main.localizedString(forKey: "GB_Key", value: nil, table: "Keys"))
                               ]
                    
                        self?.videoUrl = urlComponents.url!
                    }
                case .failure: return
                }
            }
        }
    }
}

class DummyVideoStore: VideoDetailsStore {
    
    init() {
        super.init(service: .init(apiKey: Bundle.main.localizedString(forKey: "GB_Key", value: nil, table: "Keys")))
        videoDetails = GBVideoDetail(id: 0,
                                     api_detail_url: nil,
                                     associations: nil,
                                     deck: "This is a deck",
                                     embed_player: URL(string: "https://quotey.app")!,
                                     guid: nil,
                                     length_seconds: 0,
                                     name: "Video!",
                                     premium: false,
                                     publish_date: nil,
                                     site_detail_url: nil,
                                     image: Images(icon_url: URL(string: "https://quotey.app")!, medium_url: URL(string: "https://quotey.app")!, screen_url: URL(string: "https://quotey.app")!, screen_large_url: URL(string: "https://quotey.app")!, small_url: URL(string: "https://quotey.app")!, super_url: URL(string: "https://quotey.app")!, thumb_url: URL(string: "https://quotey.app")!, tiny_url: URL(string: "https://quotey.app")!, original_url: URL(string: "https://quotey.app")!, image_tags: nil),
                                     user: nil,
                                     hosts: nil,
                                     crew: nil,
                                     video_type: nil,
                                     video_show: nil,
                                     video_categories: nil,
                                     savedTime: nil,
                                     youtube_id: nil,
                                     hd_url: nil,
                                     high_url: nil,
                                     low_url: nil,
                                     url: nil)
    }
    
}
