//
//  Contracts.swift
//  SpaceClient
//
//  Created by Mahmud CIKRIK on 20.12.2023.
//

import Foundation
import UIKit

protocol RocketsDisplayLogic: AnyObject {
    func displayFetchedRockets(viewModel: Rockets.FetchRockets.ViewModel)
    func displayRocketDetail()
}
