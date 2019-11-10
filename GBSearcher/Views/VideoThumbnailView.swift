//
//  VideoThumbnailView.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import SwiftUI

struct VideoThumbnailView: View {
    @EnvironmentObject var imageCache: ImageCache
    @ObservedObject var videoDetailsStore: VideoDetailsStore
    
    var videoId: String
    
    init(videoId: String) {
        self.videoId = videoId
        videoDetailsStore = VideoDetailsStore(service: .init())
    }
    
    init(videoDetailsStore:VideoDetailsStore, videoId: String) {
        self.videoId = videoId
        self.videoDetailsStore = videoDetailsStore
    }
    
    var body: some View {
        NavigationLink(destination: ContainerView(url:videoDetailsStore.videoUrl))
        {
            ZStack(alignment: .bottomLeading)
            {
                RemoteImageView(url: videoDetailsStore.videoDetails?.image.original_url?.absoluteString ?? "", imageCache: imageCache)
                    .frame(width: 220, height: 140, alignment: .center)
                    .clipped()
                    .cornerRadius(4)
                    .shadow(radius: 3)
                
                Text(videoDetailsStore.videoDetails?.name ?? "")
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8))
                    .background(Color("GBRedDark"))
                    .frame(width: 200, height: nil, alignment: .leading)
                    .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
            }
            .onAppear(perform: loadData)
        }
        .buttonStyle(PlainButtonStyle())
    }
    
    func loadData() {
        videoDetailsStore.fetch(videoId: videoId)
    }
}

struct VideoThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        let dummyStore = DummyVideoStore()
        return VideoThumbnailView(videoDetailsStore: dummyStore, videoId: "")
            .environmentObject(ImageCache())
    }
}
