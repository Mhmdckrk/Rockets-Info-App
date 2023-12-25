//
//  Contracts.swift
//  SpaceClient
//
//  Created by Mahmud CIKRIK on 19.12.2023.
//

import Foundation

struct Constants {
    static let baseUrl = "https://api.spacexdata.com/v3"
}

//The header fields
enum HttpHeaderField: String {
    case contentType = "Content-Type"
}

//The content type (JSON)
enum ContentType: String {
    case json = "application/json"
}

