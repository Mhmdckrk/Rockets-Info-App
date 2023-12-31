//
//  SpacesPresenter.swift
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

protocol RocketsPresentationLogic {
    func presentRockets(response: Rockets.FetchRockets.Response)
}

class RocketsPresenter: RocketsPresentationLogic {
    weak var viewController: RocketsDisplayLogic?
    
    // MARK: Present Rockets
    func presentRockets(response: Rockets.FetchRockets.Response) {
        var displayedRockets: [Rockets.FetchRockets.ViewModel.DisplayedRocket] = []
        
        for rocket in response.rockets {
            let displayedRocket = Rockets.FetchRockets.ViewModel.DisplayedRocket(rocketId: rocket.rocketID, rocketName: rocket.rocketName, rocketDescription: rocket.rocketDescription, rocketImage: rocket.flickrImages.first ?? "https://unsplash.com/photos/woWf_VJ7dNs")
            displayedRockets.append(displayedRocket)
        }
        let viewModel = Rockets.FetchRockets.ViewModel(displayedRockets: displayedRockets)
        viewController?.displayFetchedRockets(viewModel: viewModel)
    }
}
