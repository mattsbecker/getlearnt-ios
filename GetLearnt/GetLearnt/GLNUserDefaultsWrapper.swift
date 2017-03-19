//
//  GLNUserDefaultsWrapper.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/16/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import Foundation
import UIKit

/**
 GLNUserDefaultsWrapper is responsible for managing all getting/setting of user defaults. Why another singleton to manage this whenever NSUserDefaults already returns one? Because we can add an additional layer of convenience functionality that will make working with defaults at the view layer easier (iCloud Syncing, constants for preference keys, etc.)
 */

struct GLNDefaultsKeys {
    static let LoggedInKey = "loggedIn"
    static let EnableCachingKey = "enableCaching"
}

class GLNUserDefaultsWrapper {
    
    let standardDefaults: UserDefaults?
    static let sharedInstance = GLNUserDefaultsWrapper()
    
    init() {
        let initDefaults = NSDictionary.init(object: true, forKey: GLNDefaultsKeys.LoggedInKey as NSCopying)
        self.standardDefaults = UserDefaults.standard
        self.standardDefaults?.register(defaults: initDefaults as! [String : Any])
    }
    
    /**
     Sets a boolean value for the specified key
    */
    func setBooleanValueForKey(value: Bool, key: String) {
        self.standardDefaults?.set(value, forKey: key)
    }

    /**
     Returns a boolean value for the specified key
     */
    
    func booleanValueForKey(key: String) -> Bool {
        return (self.standardDefaults?.bool(forKey: key))!
    }
}
