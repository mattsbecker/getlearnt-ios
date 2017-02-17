//
//  GLNUserProperties.swift
//  GetLearnt
//
//  Created by Matt Becker on 2/11/17.
//  Copyright © 2017 Pencil & Keyboard. All rights reserved.
//

import Foundation

struct Subscription {
    var accountNoSubscription = 0
    var accountPaidSubscriptionValid = 1
}

struct Verification {
    var accountNotVerified = 0
    var accountVerified = 1
}

struct AccountType {
    var noAccount = 0
    var getlearnt = 1 // may require verification
    var facebook = 2 // will always be verified
}

class GLNUserProperties {
    var subscription = Subscription()
    var verification = Verification()
    var accountType = AccountType()
}
