//
//  NetworkError.swift
//  CrewDataJson
//
//  Created by Enkhtsetseg Unurbayar on 12/3/24.
//

import Foundation

public enum NetWorkError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case invalidJSON
    case invalidHTTPStatus
    case invalidDataParse
}


//adding more meanning to the errors
extension NetWorkError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .invalidURL:
            return "Invalid URL"
        case .invalidJSON:
            return "Data not found"
        case .invalidResponse:
            return "Invalid response code"
        case .invalidData: return "Invalid response"
        case .invalidDataParse:
            return "We Failure to parse data from Api"
        case .invalidHTTPStatus:
            return "Invalid HTTP status"
        }
    }
}
