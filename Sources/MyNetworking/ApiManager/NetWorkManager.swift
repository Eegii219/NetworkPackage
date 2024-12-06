//
//  NetWorkManager.swift
//  UIApi
//
//  Created by Enkhtsetseg Unurbayar on 11/20/24.
//

import Foundation
import Combine




public class NetWorkManager : NetWorking {
    
    public init(){}
    @available(macOS 10.15, *)
    public func retrievDataFromURL<T: Decodable>(url: URL) -> AnyPublisher<T, Error> {
            return URLSession.shared.dataTaskPublisher(for: url)
                .tryMap { (data, response) in
                    guard let httpResponse = response as? HTTPURLResponse,
                          (200...299).contains(httpResponse.statusCode) else {
                        throw NetWorkError.invalidHTTPStatus
                    }
                    return data
                }
                .decode(type: T.self, decoder: JSONDecoder())
                .mapError { error in
                    if let decodingError = error as? DecodingError {
                        return NetWorkError.invalidJSON
                    }
                    return error
                }
                .eraseToAnyPublisher()
        }
    
    
}
