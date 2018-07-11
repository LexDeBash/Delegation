//
//  DelegatedCall.swift
//  delegation
//
//  Created by Alexey Efimov on 18.04.2018.
//  Copyright © 2018 swiftbook.ru. All rights reserved.
//

import Foundation

struct DelegetedCall<Input> {
    
    private(set) var callback: ((Input) -> Void)?
    
    mutating func delegate<Object: AnyObject>(to object: Object, with callback: @escaping(Object, Input) -> Void) {
        self.callback = { [weak object] input in
            guard let object = object else { return }
            callback(object, input)
        }
    }
    
}
