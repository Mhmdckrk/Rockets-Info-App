//
//  RocketDetailModels.swift
//  SpaceClient
//
//  Created by Mahmud CIKRIK on 20.12.2023.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

enum RocketDetail {
  // MARK: Use cases
  
  enum FetchRocket {
    struct Request {
        var rocketId: String?
    }
    
    struct Response {
        var rocket: RocketsResponseModel
    }
    
    struct ViewModel {
        struct DisplayedRocket {
            var rocketName: String
            var rocketDescription: String
            var rocketImage: String
        }
        
        var displayedRocket: DisplayedRocket
    }
  }
}