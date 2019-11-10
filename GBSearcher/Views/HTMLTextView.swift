//
//  HTMLTextView.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import SwiftUI

struct HtmlText : View {
    @ObservedObject private var textFormatter = TextFormatter()
    
    init(htmlText: String) {
        textFormatter.formatString(htmlText: htmlText)
    }
    
    var body: some View {
        if let htmlText = self.textFormatter.formattedText
        {
            return Text(htmlText)
        }
        else {
            return Text("")
        }
    }
}
