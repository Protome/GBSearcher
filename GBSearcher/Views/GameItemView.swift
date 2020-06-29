//
//  GameItemView.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import SwiftUI
import GBSwift

struct GameItemView: View {
    @EnvironmentObject var imageCache: ImageCache
    let game: Game
    
    var body: some View {
        HStack(alignment: .center) {
            RemoteImageView(url: game.image?.icon_url.absoluteString ?? "", imageCache: imageCache)
                .cornerRadius(4)
                .frame(width: 80, height: 80, alignment: .center)
                
            VStack(alignment: .leading) {
                Text(game.name ?? "")
                    .font(.headline)
                Text(game.deck ?? "")
                    .font(.subheadline)
                    .truncationMode(Text.TruncationMode.tail)
            }.frame(width: nil, height: 80, alignment: .center)
        }
    }
}

struct GameItemView_Previews: PreviewProvider {
    static var previews: some View {
        let mockGame = Game.CreateMock()
        
        return GameItemView(game: mockGame)
            .environmentObject(ImageCache())
    }
}
