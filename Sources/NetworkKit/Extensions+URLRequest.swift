//
//  Extensions+URLRequest.swift
//  
//
//  Created by JeongTaek Han on 2023/05/20.
//

import Foundation


public extension URLRequest {
    
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
