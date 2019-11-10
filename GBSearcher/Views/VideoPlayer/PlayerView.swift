//
//  PlayerView.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 10/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import SwiftUI
import AVKit

struct PlayerView : UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<PlayerView>) -> AVPlayerViewController {
        let controller = AVPlayerViewController()
        let player1 = AVPlayer(url: url)
        controller.player = player1
        return controller
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: UIViewControllerRepresentableContext<PlayerView>) {
    }
}

struct ContainerView: View {
    let url: URL
    
    var body: some View {
        PlayerView(url: url)
    }
}
