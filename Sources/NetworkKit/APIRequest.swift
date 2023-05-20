//
//  APIRequest.swift
//  
//
//  Created by JeongTaek Han on 2023/05/20.
//

import Foundation


public protocol APIRequest {
    
    associatedtype Response
    
    var urlRequest: URLRequest? { get }
    func decodeResponse(data: Data) throws -> Response
    
    @discardableResult
    func verify(response: URLResponse) throws -> Bool
    
}
