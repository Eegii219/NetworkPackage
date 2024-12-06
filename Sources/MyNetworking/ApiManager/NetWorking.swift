//
//  JsonNetworking.swift
//  CrewDataJson
//
//  Created by Enkhtsetseg Unurbayar on 12/3/24.
//
import Foundation
import Combine
public protocol NetWorking {
    
    @available(macOS 10.15, *)
    func retrievDataFromURL<T: Decodable>( url: URL) -> AnyPublisher<T, Error>
}
