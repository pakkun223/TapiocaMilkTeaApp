//
//  Data.swift
//  TapiocaMilkTea
//
//  Created by reina.tanaka on 2021/08/15.
//

import Foundation

struct OrderStore {
    let orders: [OrderEntity] = load("orderEntity.json")
}
let orderStore = OrderStore()

func load<T: Decodable>(_ fileName: String, as type: T.Type = T.self) -> T {
    let data: Data
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
    else {
        fatalError("Couldn't find \(fileName) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
    }
}
