//
//  Constants.swift
//  Flash Chat iOS13
//
//  Created by Vladimir on 03/09/24.
//  Copyright © 2024 Angela Yu. All rights reserved.

import CoreGraphics

struct K {
    static let appName = "⚡️FlashChat"
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "MessageCell"
    static let registerName = "Register"
    static let loginName = "Log In"
    static let emailName = "Email"
    static let passwordName = "Password"
    
    struct BrandColors {
        static let purple = "BrandPurple"
        static let lightPurple = "BrandLightPurple"
        static let blue = "BrandBlue"
        static let lighBlue = "BrandLightBlue"
    }
    struct Size {
        static let buttonSize: CGFloat = 48
    }
    
    struct FStore {
        static let collectionName = "messages"
        static let senderField = "sender"
        static let bodyField = "body"
        static let dateField = "date"
    }
}
