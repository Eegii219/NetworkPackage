//
//  NetworkError.swift
//  CrewDataJson
//
//  Created by Enkhtsetseg Unurbayar on 12/3/24.
//

import Foundation

public enum NetworkError: Error {
    case invalidResponse
    case invalidData
    case decodingError
    case fileNotFound
}
