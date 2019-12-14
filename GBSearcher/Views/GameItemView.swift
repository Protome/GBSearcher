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
        let mockGame = Game(id: 1,
                            aliases: nil,
                            api_detail_url: nil,
                            date_added: nil,
                            date_last_updated: nil,
                            deck: "Gravity Rush 2 is Kieran's GOTY every year",
                            description: "",
                            expected_release_day: nil,
                            expected_release_month: nil,
                            expected_release_quarter: nil,
                            expected_release_year: nil,
                            guid: nil,
                            image: nil,
                            image_tags: nil,
                            name: "Gravity Rush 2",
                            number_of_user_reviews: nil,
                            original_game_rating: nil,
                            original_release_date: nil,
                            platforms: nil,
                            site_detail_url: nil,
                            resource_type: nil)
        
        
        return GameItemView(game: mockGame)
            .environmentObject(ImageCache())
    }
}
