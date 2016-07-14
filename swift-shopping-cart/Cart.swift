//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Eldon Chan on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
    
    var items : [Item] = []
    
    
    func totalPriceInCents() -> Int {
        var total : Int = 0
        for item in items {
            total += item.priceInCents
        }
        
        return total
    }
    
    func addItem(newItem : Item) {
        items.append(newItem)
    }
    
    func removeItem(removeItem : Item) {
        for (index, item) in items.enumerate(){
            if item == removeItem {
                items.removeAtIndex(index)
            }
        }
    }
    
    func itemsWithName(withName: String) -> [Item]{
        var matchItems : [Item] = []
        
        for item in items {
            if item.name == withName {
                matchItems.append(item)
            }
        }
        
        return matchItems
    }
    
    func itemsWithMinimumPriceInCents (minCents : Int) -> [Item] {
        var matchPrice : [Item] = []
        
        for item in items {
            if item.priceInCents >= minCents {
                matchPrice.append(item)
            }
        }
        
        return matchPrice
    }
    
    func itemsWithMaximumPriceInCents (maxCents : Int) -> [Item] {
        var matchPrice : [Item] = []
        
        for item in items {
            if item.priceInCents <= maxCents {
                matchPrice.append(item)
            }
        }
        
        return matchPrice
    }
}