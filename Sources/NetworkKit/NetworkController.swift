//
//  NetworkController.swift
//  
//
//  Created by JeongTaek Han on 2023/05/20.
//

import Foundation

/// An object that manages a network operation.
public class NetworkController {
    
    /// Creates a network controller.
    public init() {}
    
    /// Performs a send operation with request information.
    /// - Parameter request: Request instance which conforms ``APIRequest`` protocol.
    /// - Returns: Response instance which decoded to ``APIRequest``'s Response type.
    public func send<Request: APIRequest>(request: Request) async throws -> Request.Response {
        guard let urlRequest = request.urlRequest else {
            throw APIRequestError.invalidApiURL
        }
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        try request.verify(response: response)
        let decodedResponse = try request.decodeResponse(data: data)
        
        return decodedResponse
    }
    
    enum APIRequestError: Error {
        case invalidApiURL
    }
    
}
