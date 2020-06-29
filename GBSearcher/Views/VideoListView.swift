//
//  VideoListView.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import SwiftUI
import GBSwift

struct VideoListView: View {
    var videoIds: [GBObject]
    var title: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.leading, 16)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    ForEach (videoIds) { videoId in
                        VideoThumbnailView(videoId: String(videoId.id))
                            .shadow(radius: 3)
                    }
                }
                .padding()
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView(videoIds: [GBObject.CreateMock()], title: "test")
        .environmentObject(ImageCache())
    }
}
