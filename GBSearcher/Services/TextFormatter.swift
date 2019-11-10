//
//  TextFormatter.swift
//  GBSearcher
//
//  Created by Kieran Bamford on 09/11/2019.
//  Copyright © 2019 Kieran Bamford. All rights reserved.
//

import Foundation

class TextFormatter: ObservableObject {
    @Published var formattedText: String?
    
    func formatString(htmlText: String)
    {
        let text = stripFigureTags(htmlText:htmlText)
        
        let data = Data(text.utf8)
        DispatchQueue.main.async {
            if let attributedString = try? NSAttributedString(data: data, options: [.documentType: NSAttributedString.DocumentType.html], documentAttributes: nil) {
                self.formattedText = attributedString.string
            }
        }
    }
    
    func stripFigureTags(htmlText: String) -> String
    {
        var finalString = ""
        let tags = htmlText.components(separatedBy: "<figure")
        
        for tag in tags {
            let endSplit = tag.components(separatedBy: "</figure>")
            if endSplit.count == 1 {
                finalString += endSplit[0]
            }
            
            if endSplit.count > 1 {
                finalString += endSplit[1]
            }
        }
        
        return finalString
    }
}
