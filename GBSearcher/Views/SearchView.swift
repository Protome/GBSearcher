//
//  SearchView.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import SwiftUI
import GBSwift

struct SearchView : View {
    
    var body: some View {
        NavigationView {
            MasterView()
            .navigationBarTitle(Text("Search"))
            GameDetailView(game: nil)
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
    
    struct MasterView: View {
        @State private var query: String = "Gravity Rush"
        @EnvironmentObject var gamesSearchService: GamesSearchService

        var body: some View {
            VStack() {
                TextField("", text: $query, onCommit: searchForGames)
                    .padding(.horizontal)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                List {
                    ForEach(gamesSearchService.games) { game in
                        NavigationLink(destination: GameDetailView(game: game)) {
                            GameItemView(game: game)
                                .onAppear() {
                                    self.listItemAppears(game)
                            }
                        }
                    }
                }
            }
            .onAppear(perform: searchForGames)
        }

        private func searchForGames() {
            gamesSearchService.searchForGames(query: query)
        }
        
        private func listItemAppears(_ game: Game) {
            if gamesSearchService.games.count < 3 {
                return
            }
            
            if gamesSearchService.games[gamesSearchService.games.count - 3].id == game.id {
                gamesSearchService.searchForGames(query: query)
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        let store = GamesSearchService(service: .init(apiKey: Bundle.main.localizedString(forKey: "GB_Key", value: nil, table: "Keys")))
        return SearchView().environmentObject(store)
    }
}
