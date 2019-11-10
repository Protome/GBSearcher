//
//  ImageListView.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import SwiftUI

struct ImageListView: View {
    @EnvironmentObject var imageCache: ImageCache
    var images: [SingleImageObject] = []
    var title: String

    var body: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text(title)
                .font(.title)
                .fontWeight(.semibold)
                .padding(.leading, 16)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    ForEach (images) { image in
                        RemoteImageView(url: image.imageUrl ?? "", imageCache: self.imageCache)
                            .frame(width: 220, height: 140, alignment: .center)
                            .clipped()
                            .cornerRadius(4)
                            .shadow(radius: 3)
                    }
                }
                .padding()
            }
        }
    }
}

struct ImageListView_Previews: PreviewProvider {
    static var previews: some View {
        let dummyImages = [SingleImageObject(id: 0, imageUrl: "", thumbnailUrl: "")]
        return ImageListView(images: dummyImages, title: "Test")
            .environmentObject(ImageCache())
    }
}
