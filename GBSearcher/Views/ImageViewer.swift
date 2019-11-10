//
//  ImageViewer.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import SwiftUI

struct ImageViewer: View {
    @State var scale: CGFloat
    @EnvironmentObject var imageCache: ImageCache
    var image: SingleImageObject
    
    var body: some View {
        let gesture = MagnificationGesture(minimumScaleDelta: 0.1)
            .onChanged { scaleDelta in
                self.scale *= scaleDelta
        }
        
        let tapGesture = TapGesture(count: 2)
            .onEnded {
                self.scale = 1
        }
        
        return ScrollView([.horizontal, .vertical]){
            RemoteImageView(url: image.imageUrl ?? "", imageCache: self.imageCache)
                .gesture(gesture)
                .gesture(tapGesture)
                .scaleEffect(scale)
                .aspectRatio(contentMode: ContentMode.fill)
        }.background(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
    }
}

//struct ImageViewer_Previews: PreviewProvider {
//    static var previews: some View {
//        ImageViewer(image: SingleImageObject(id: 1, imageUrl: nil, thumbnailUrl: nil))
//    }
//}
