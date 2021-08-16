//
//  OrderDetail.swift
//  TapiocaMilkTea
//
//  Created by reina.tanaka on 2021/08/15.
//

import SwiftUI

struct OrderDetail: View {
    var order: OrderEntity
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Text("Favorite")
                if order.nataDeCoco {
                    Image(systemName: "heart.circle.fill")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.pink)
                } else {
                    Image(systemName: "heart.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(.gray)
                }
            }.padding()
            
            Image("tapioca_preview")
                .resizable()
            
            Text(order.flavorName)
                .font(.title)
            if order.nataDeCoco {
                Text("Nata de coco")
            }
            if order.iceCream != 0 {
                Text(order.iceCreamName)
            }
            Text(order.other)
            Text(self.dateFormatter.string(from: order.date))
                .font(.caption)
        }
    }
}

struct OrderDetail_Previews: PreviewProvider {
    static var previews: some View {
        OrderDetail(order: orderStore.orders[0])
    }
}
