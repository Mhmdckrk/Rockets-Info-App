//
//  Model.swift
//  SpaceClient
//
//  Created by Mahmud CIKRIK on 19.12.2023.
//

import Foundation

// MARK: - RocketsResponseModel
struct RocketsResponseModel: Codable {
    let id: Int
    let flickrImages: [String]
    let wikipedia: String
    let rocketDescription, rocketID, rocketName, rocketType: String
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case flickrImages = "flickr_images"
        case wikipedia = "wikipedia"
        case rocketDescription = "description"
        case rocketID = "rocket_id"
        case rocketName = "rocket_name"
        case rocketType = "rocket_type"
    }
}
