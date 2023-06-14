//
//  APIRequest.swift
//  
//
//  Created by JeongTaek Han on 2023/05/20.
//

import Foundation


/// A type that declares an api request form that a network controller can perform.
public protocol APIRequest {
    
    /// A type that represent a response form of api request.
    associatedtype Response: Codable
    
    /// A property that contains api request information.
    var urlRequest: URLRequest? { get }
    
    /// Decode response data to response form.
    /// - Parameter data: The data that represent remote server's response.
    /// - Returns: An instance decoded to ``Response`` type.
    func decodeResponse(data: Data) throws -> Response
    
    
    /// Verify response whether an exception occurred.
    /// - Parameter response: The response information that represent remote server's returned.
    /// - Returns: A boolean value that represent whether an exception has been occurred or not.
    @discardableResult
    func verify(response: URLResponse) throws -> Bool
    
}
