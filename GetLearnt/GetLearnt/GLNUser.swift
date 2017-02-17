//
//  GLNUser.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/11/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import Foundation
import UIKit

class User {
    var id: Int
    var name: String
    var email: String
    var avatar: UIImage?
    var userProperties: GLNUserProperties?
    
    
    /**
     Initialize with name, email, and user properties.
    
     Properties define subscription status/type, verification status, and account type
     
     */
    init(id: Int, name: String, email: String, properties: GLNUserProperties) {
        self.id = id
        self.name = name
        self.email = email
        self.userProperties = properties
    }
    
    func setUserAvatarFromData(data: Data) {
        // set the user's avatar from the image data that's retrieved from an API call
    }
}
