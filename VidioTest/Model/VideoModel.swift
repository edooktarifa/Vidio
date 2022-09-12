//
//  VideoModel.swift
//  VidioTest
//
//  Created by Phincon on 12/09/22.
//

import Foundation

struct VideoModel : Codable {
    let id : Int?
    let variant : String?
    let items : [VideoItems]?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case variant = "variant"
        case items = "items"
    }
}

struct VideoItems : Codable {
    let id : Int?
    let title : String?
    let video_url : String?
    let image_url : String?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case title = "title"
        case video_url = "video_url"
        case image_url = "image_url"
    }
}

