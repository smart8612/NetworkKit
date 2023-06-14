//
//  Extensions+URLRequest.swift
//  
//
//  Created by JeongTaek Han on 2023/05/20.
//

import Foundation


public extension URLRequest {
    
    /// Create url request with containing preconfigured json post header.
    /// - Parameter url: A url that represent host's domain.
    /// - Returns: A url request that contains http header preconfigured with json post.
    static func initWithJSONPost(url: URL?) -> URLRequest? {
        guard let url = url else {
            return nil
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue(
            "application/json",
            forHTTPHeaderField: "Content-Type"
        )
        
        return request
    }
    
}
