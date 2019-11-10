//
//  ImageLoader.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class ImageLoader: ObservableObject {
    let imageCache: ImageCache
    @Published var downloadedImage: UIImage?
    
    init() {
        imageCache = ImageCache()
    }
    
    init(cache: ImageCache) {
        imageCache = cache
    }
    
    func load(url: String) {
        guard let imageURL = URL(string: url) else {
            fatalError("ImageURL is not correct!")
        }
        
        if let cachedImage = imageCache.Cache.object(forKey: url as NSString) {
            self.downloadedImage = cachedImage
        }
        
        URLSession.shared.dataTask(with: imageURL) { data, response, error in
            guard let data = data, error == nil else {
                return
            }
            
            DispatchQueue.main.async {
                
                if let image = UIImage(data: data) {
                    self.imageCache.Cache.setObject(image, forKey: url as NSString)
                }
                self.downloadedImage = UIImage(data: data)
            }
        }.resume()
        
    }
    
    
}
