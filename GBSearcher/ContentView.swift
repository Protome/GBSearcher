//
//  ContentView.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        Text(Bundle.main.localizedString(forKey: "GB_Key", value: nil, table: "Keys"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
