//
//  RemoteImageView.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import SwiftUI

struct RemoteImageView: View {
    @ObservedObject var imageLoader: ImageLoader
    
    var placeholder: Image
    
    init(url: String, imageCache: ImageCache, placeholder: Image = Image("Placeholder")) {
        self.placeholder = placeholder
        self.imageLoader = ImageLoader(cache: imageCache)
        if !url.isEmpty {
            self.imageLoader.load(url: url)
        }
    }
    
    var body: some View {
        if let uiImage = self.imageLoader.downloadedImage {
            return Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .clipped()
        } else {
            return placeholder
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .clipped()
        }
    }
}

struct RemoteImageView_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImageView(url: "https://giantbomb1.cbsistatic.com/uploads/square_avatar/0/5327/252573-yukes.jpg", imageCache: ImageCache(), placeholder: Image("Placeholder"))
    }
}
