//
//  TapiocaMilkTeaApp.swift
//  TapiocaMilkTea
//
//  Created by reina.tanaka on 2021/08/15.
//

import SwiftUI

@main
struct TapiocaMilkTeaApp: App {
    var body: some Scene {
        WindowGroup {
            OrderDetail(order: orderStore.orders[0])
        }
    }
}
