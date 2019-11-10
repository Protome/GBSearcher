//
//  ImageViewer.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

public class ImageViewer: UIViewController {
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var ScrollView: UIScrollView!
    
    private var _currentImage: UIImage = UIImage(named: "PlaceholderLarge")!
    public var currentImage: UIImage
    {
        get {
            return _currentImage
        }
        set (image) {
            _currentImage = image
            ImageView?.image = image
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        ScrollView.delegate = self
        ImageView?.image = currentImage
    }

    @IBAction func ScrollDoubleTapped(_ sender: UITapGestureRecognizer) {
        ScrollView.setZoomScale(1.0, animated: true)
    }
}

extension ImageViewer: UIScrollViewDelegate {
    public func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return ImageView
    }
}

struct ImageViewerSwiftUI : UIViewControllerRepresentable {
    let image: UIImage
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImageViewerSwiftUI>) -> ImageViewer {
        let controller = ImageViewer()
        controller.currentImage = image
        return controller
    }
    
    func updateUIViewController(_ uiViewController: ImageViewer, context: UIViewControllerRepresentableContext<ImageViewerSwiftUI>) {
    }
}

struct ImageViewerContainerView: View {
    @ObservedObject var imageLoader: ImageLoader
    
    @State private var showShareSheet: Bool = false
    
    var placeholder: UIImage
    
    init(url: String, imageCache: ImageCache, placeholder: UIImage = UIImage(named: "Placeholder")!) {
        self.placeholder = placeholder
        self.imageLoader = ImageLoader(cache: imageCache)
        if !url.isEmpty {
            self.imageLoader.load(url: url)
        }
    }
    
    var body: some View {
        ImageViewerSwiftUI(image: self.imageLoader.downloadedImage ?? placeholder)        .navigationBarItems(trailing:
            Image(systemName: "square.and.arrow.up")
                .onTapGesture {
                    self.showShareSheet = true
                }
            )
            .sheet(isPresented: $showShareSheet) {
            ShareSheet(sharing: [self.imageLoader.downloadedImage ?? ""])
        }
    }
}
