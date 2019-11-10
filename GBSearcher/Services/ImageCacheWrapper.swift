//
//  ImageCacheWrapper.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation
import UIKit

class ImageCache: ObservableObject {
    let Cache = NSCache<NSString, UIImage>()
}
