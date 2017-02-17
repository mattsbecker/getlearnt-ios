//
//  GLNUserDefaultsWrapper.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/16/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import Foundation
import UIKit

class GLNUserDefaultsWrapper {
    let standardDefaults: UserDefaults?
    static let sharedInstance = GLNUserDefaultsWrapper()
    
    init() {
        let initDefaults = NSDictionary.init(object: true, forKey: "isLoggedIn" as NSCopying)
        self.standardDefaults = UserDefaults.standard
        self.standardDefaults?.register(defaults: initDefaults as! [String : Any])
    }
    
    func setBooleanValueForKey(value: Bool, key: String) {
        self.standardDefaults?.set(value, forKey: key)
    }
    
    func booleanValueForKey(key: String) -> Bool {
        return (self.standardDefaults?.bool(forKey: key))!
    }
}
