//
//  RMService.swift
//  swift_RiskAndMorty
//
//  Created by Tung on 12/03/2023.
//

import Foundation

/// Primary API service object  to get RIck & Morty data
final class RMService {
    /// Share singleton instance
    static let shared = RMService()
    
    /// Privatized Constructor
    private init () {}
    
    /// Send Rick & Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute (_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
