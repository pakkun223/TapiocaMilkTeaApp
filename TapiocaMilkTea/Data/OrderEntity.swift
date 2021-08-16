//
//  OrderEntity.swift
//  TapiocaMilkTea
//
//  Created by reina.tanaka on 2021/08/15.
//

import Foundation

enum Flavor: Int16 {
    case milk_tea
    case uji_match_milk
    case okinawa_brown_sugar_milk
    case cassis_rasberry_milk
    case strawberry_milk
    
    var name: String {
        flavorArray[Int(self.rawValue)]
    }
}

enum IceCream: Int16 {
    case None
    case Vanilla
    case Tea
    case Match
    var name: String {
        iceCreamArray[Int(self.rawValue)]
    }
}

var flavorArray = ["Milk tea",
                   "Uji Match Milk",
                   "Okinawa brown sugar milk",
                   "Cassis rasberry milk",
                   "Strawberry Milk"]

var iceCreamArray = ["None",
                     "Vanilla",
                     "Tea",
                     "Match"]

struct OrderEntity: Codable, Identifiable {
    public var id: String   // ID
    public var flavor: Int16    // 味の種類
    public var iceCream: Int16  // アイストッピング
    public var nataDeCoco: Bool      // ナタデココトッピング有無
    public var other: String    // 備考
    public var date: Date       // 注文日
    public var quantity: Int16     // 注文数
    public var favorite: Bool      // お気に入りフラグ
    
    /// 味の種類の文字列を取得する
    public var flavorName: String {
        Flavor(rawValue: self.flavor)!.name
    }
    
    /// アイストッピングの文字列を取得する
    public var iceCreamName: String {
        IceCream(rawValue: self.iceCream)!.name
    }
}
