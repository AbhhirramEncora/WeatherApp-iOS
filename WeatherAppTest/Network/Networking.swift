//
//  Networking.swift
//  WeatherAppTest
//
//  Created by Abhhirram Veedhi on 1/27/26.
//

import Foundation

protocol Networking {
    func request<T: Decodable>(
        endpoint: APIEndpoint,
        responseType: T.Type
    ) async throws -> T
}
