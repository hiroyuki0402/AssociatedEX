//
//  CustomArray.swift
//  AssociatedEX
//
//  Created by SHIRAISHI HIROYUKI on 2023/03/06.
//

import Foundation


protocol Appendble: AnyObject {
    associatedtype Item
    var colllection: [Item] { get set}
    func append(item: Item)
}

class CustomArray: Appendble {
    typealias Item = String
    var colllection: [String] = []
    func append(item: String) {
        self.colllection.append(item)
    }
}
