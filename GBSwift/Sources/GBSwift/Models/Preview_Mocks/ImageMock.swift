//
//  ImageMock.swift
//  
//
//  Created by Kieran Bamford on 29/06/2020.
//

import Foundation

extension Image {
    public static func CreateMock() -> Image {
        return Image(icon_url: URL(string: "https://giantbomb1.cbsistatic.com/uploads/square_avatar/0/5327/252573-yukes.jpg")!,
                     medium_url: URL(string: "https://giantbomb1.cbsistatic.com/uploads/square_avatar/0/5327/252573-yukes.jpg")!,
                     screen_url: URL(string: "https://giantbomb1.cbsistatic.com/uploads/screen_medium/0/5327/252573-yukes.jpg")!,
                     screen_large_url: URL(string: "https://giantbomb1.cbsistatic.com/uploads/screen_kubrick/0/5327/252573-yukes.jpg")!,
                     small_url: URL(string: "https://giantbomb1.cbsistatic.com/uploads/scale_small/0/5327/252573-yukes.jpg")!,
                     super_url: URL(string: "https://giantbomb1.cbsistatic.com/uploads/scale_large/0/5327/252573-yukes.jpg")!,
                     thumb_url: URL(string: "https://giantbomb1.cbsistatic.com/uploads/scale_avatar/0/5327/252573-yukes.jpg")!,
                     tiny_url: URL(string: "https://giantbomb1.cbsistatic.com/uploads/square_mini/0/5327/252573-yukes.jpg")!,
                     original_url: URL(string: "https://giantbomb1.cbsistatic.com/uploads/original/0/5327/252573-yukes.jpg")!,
                     image_tags: "image_tags")
    }
}
