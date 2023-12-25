//
//  CNetwork.swift
//  SpaceClient
//
//  Created by Mahmud CIKRIK on 19.12.2023.
//

import Foundation
import Alamofire
import KRProgressHUD

public final class CNetwork {
    public static let shared = CNetwork()
    
    public func execute<M: Codable>(requestRoute: CNetworkRouter,
                                    responseModel: M.Type,
                                    isLoaderActive: Bool = true,
                                    completion: @escaping (Swift.Result<M, CNetworkError>) -> Void) {
        
        if isLoaderActive {
            KRProgressHUD.show()
        }
        
        do {
            let urlRequest = try requestRoute.asURLRequest() //router için oluşturulmuş URLRequest
            AF.request(urlRequest).validate().responseJSON { (response) in
                do {
                    if response.result.isSuccess {
                        KRProgressHUD.dismiss()
                        switch response.result {
                        case .success(let value):
                            let jsonData = try JSONSerialization.data(withJSONObject: value, options: .prettyPrinted)
                            let jsonResults = try JSONDecoder().decode(responseModel, from: jsonData)
                            completion(.success(jsonResults))
                        case .failure(_):
                            completion(.failure(.parseError))
                        }
                    }
                } catch {
                    KRProgressHUD.dismiss()
                }
            }
        } catch {
            KRProgressHUD.dismiss()
            completion(.failure(.badUrlError))
        }
    }
}



