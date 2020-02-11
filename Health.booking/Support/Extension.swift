//  Extension.swift
//  Health.booking
//
//  Created by Shak4l on 10/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit


// MARK: - UIColor
extension UIColor {
    
    static let lightBackground =
        UIColor(named: "lightBackground")!
    
    static let tableCellBackground =
        UIColor(named: "tableCellBackground")!
    
    
    static let backgroundColor: UIColor = {
        if #available(iOS 13.0, *) {
            return UIColor.systemBackground
        }
        return UIColor.white
    }()
    
}

// MARK: - String
extension String {
    func base64Encoded() -> String? {
        return data(using: .utf8)?.base64EncodedString()
    }
    
    func base64Decoded() -> String? {
        guard let data = Data(base64Encoded: self) else { return nil }
        return String(data: data, encoding: .utf8)
    }
}
