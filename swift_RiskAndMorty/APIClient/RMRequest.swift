//
//  RMRequest.swift
//  swift_RiskAndMorty
//
//  Created by Tung on 12/03/2023.
//

import Foundation

/// Object that repersents a singlet API call
final class RMRequest {
    // Base url
    /// API Constants
    private struct Constants {static let baseUrl = "https://rickandmortyapi.com/api"}
    
    // Endpoint
    /// Desired endpoint
    private let endpoint: RMEndPoint
    
    // Path components
    /// Path components for API, if any
    private let pathComponents: Set<String>
    
    // Query parameters
    /// Query arguments for API, if any
    private let queryParameters: [URLQueryItem]
    
    /// Constructed url for the api request in string format
    private var urlString: String {
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty {
            pathComponents.forEach({string += "/\($0)"})
        }
        
        if !queryParameters.isEmpty {
            string += "?"
            // name=value&name=value
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {return nil}
                return "\($0.name)=\(value)"
            }).joined(separator: "&")
            
            string += argumentString
        }
        
        return string
    }
    
    // https://rickandmortyapi.com/api/character/2
    /// Computed & constructed  API url
    public var url: URL? {return URL(string: urlString)}
    
    /// Desired http method
    public let httpMethod = "GET"
    
    // MARK: - Public
    
    /// Construct request
    /// - Parameters:
    ///   - endpoint: Target  endpooint
    ///   - pathComponents: Collection of Path components
    ///   - queryParameters: Colection of query parameters
    public init(
        endpoint: RMEndPoint,
        pathComponents: Set<String> = [],
        queryParameters: [URLQueryItem] = []
    ) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
}
