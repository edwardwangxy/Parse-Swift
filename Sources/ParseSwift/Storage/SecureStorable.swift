//
//  SecureStorable.swift
//  ParseSwift
//
//  Created by Florent Vilmart on 17-09-25.
//  Copyright © 2017 Parse. All rights reserved.
//

import Foundation

protocol SecureStorable {
    init(service: String?)
    func object<T>(forKey key: String) async -> T? where T: Decodable
    func set<T>(object: T?, forKey: String) async -> Bool where T: Encodable
    // subscript <T>(key: String) -> T? where T: Codable { get }
    func removeObject(forKey: String) async -> Bool
    func removeAllObjects() async -> Bool
}
