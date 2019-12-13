//
//  GameDetailView.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import SwiftUI

struct GameDetailView: View {
    @EnvironmentObject var imageCache: ImageCache
    @ObservedObject var gameDetailsStore: GameDetailsStore
    @State private var showShareSheet: Bool = false
    let game: Game
    
    init(game: Game) {
        self.game = game
        gameDetailsStore = GameDetailsStore(service: .init())
    }
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: .leading, spacing: 8.0) {
                ZStack(alignment: .bottomLeading){
                    GeometryReader { geometry in
                        RemoteImageView(url: self.game.image?.super_url.absoluteString ?? "", imageCache: self.imageCache, placeholder: Image("PlaceholderLarge"))
                            .padding(1.0)
                            .frame(maxWidth: geometry.size.width,
                                   maxHeight: geometry.size.height)
                            .aspectRatio(contentMode: ContentMode.fill)
                            .clipped()
                    }
                    HStack(alignment: .center){
                        Text(self.game.name ?? "")
                            .font(.largeTitle)
                            .fontWeight(.black)
                            .foregroundColor(Color.white)
                            .multilineTextAlignment(.leading)
                            .padding()
                        Spacer()
                    }.background(/*@START_MENU_TOKEN@*/Color("HeaderBackground")/*@END_MENU_TOKEN@*/)
                }.frame(height: 250)
                
                Text(game.deck ?? "")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .padding(.horizontal)
                
                ImageListView(images: gameDetailsStore.gameImages, title: gameDetailsStore.gameImages.count > 0 ? "Images" : "")
                    .padding(.top)
                
                VideoListView(videoIds: gameDetailsStore.gameVideos, title: gameDetailsStore.gameVideos.count > 0 ? "Videos" : "")
                
                HtmlText(htmlText: game.description ?? "")
                    .font(.body)
                    .padding([.top, .leading, .trailing])
                
                Spacer()
            }
        }
        .edgesIgnoringSafeArea(.top)
        .navigationBarItems(trailing:
            Image(systemName: "square.and.arrow.up")
                .onTapGesture {
                    self.showShareSheet = true
            }
        )
            .onAppear(perform: loadData)
            .sheet(isPresented: $showShareSheet) {
                ShareSheet(sharing: [self.gameDetailsStore.gameDetails?.site_detail_url ?? ""])
        }
    }
    
    func loadData() {
        gameDetailsStore.fetch(gameId: game.guid ?? "")
    }
}

struct GameDetailView_Previews: PreviewProvider {
    static var previews: some View {
        let mockGame = Game(id: 1,
                            aliases: nil,
                            api_detail_url: nil,
                            date_added: nil,
                            date_last_updated: nil,
                            deck: "Gravity Rush 2 is Kieran's GOTY every year",
                            description: "Gravity Rush 2 is the sequel to Gravity Rush, but on PS4!",
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
        
        
        return GameDetailView(game: mockGame)
            .environmentObject(ImageCache())
    }
}
