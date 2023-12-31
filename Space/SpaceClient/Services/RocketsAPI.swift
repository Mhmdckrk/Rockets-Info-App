//
//  RocketsAPI.swift
//  SpaceClient
//
//  Created by Mahmud CIKRIK on 20.12.2023.
//

import Foundation

protocol RocketStoreProtocol {
    func fetchRockets(completion: @escaping ((_ response: [RocketsResponseModel], _ error: CNetworkError?) -> Void))
    func fetchRocket(request: RocketDetail.FetchRocket.Request, completion: @escaping ((_ response: RocketsResponseModel?, _ error: CNetworkError?) -> Void))
}

class RocketsAPI: RocketStoreProtocol {
    func fetchRocket(request: RocketDetail.FetchRocket.Request, completion: @escaping ((RocketsResponseModel?, CNetworkError?) -> Void)) {
        guard let rocketId = request.rocketId else {
            return
        }
        
        CNetwork.shared.execute(requestRoute: CNetworkRouter.rocket(rocketID: rocketId), responseModel: RocketsResponseModel.self) { result in
            switch result {
            case .success(let rocket):
                completion(rocket, nil)
            case .failure(let error):
                completion(nil, error)
            }
        }
    }
    
    func fetchRockets(completion: @escaping (([RocketsResponseModel], CNetworkError?) -> Void)) {
        CNetwork.shared.execute(requestRoute: CNetworkRouter.rockets, responseModel: [RocketsResponseModel].self) { result in
            switch result {
            case .success(let rockets):
                completion(rockets, nil)
            case .failure(let error):
                completion([], error)
            }
        }
    }
}
