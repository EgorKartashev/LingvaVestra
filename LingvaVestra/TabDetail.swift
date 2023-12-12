//
//  TabDetail.swift
//  LingvaVestra
//
//  Created by Sergey Pavlov on 09.12.2023.
//

import UIKit

enum TabDetail: Int {
    case main
    case dictionary
    case profile

    var title: String {
        switch self {
        case .main:
            return "Main"
        case .dictionary:
            return "Dictionary"
        case .profile:
            return "Profile"
        }
    }

    var image: UIImage {
        switch self {
        case .main:
            return UIImage(systemName: "house")!
        case .dictionary:
            return UIImage(systemName: "book")!
        case .profile:
            return UIImage(systemName: "person")!
        }
    }
}

extension UITabBarItem {
    convenience init(_ tabDetails: TabDetail) {
        self.init(title: tabDetails.title, image: tabDetails.image, tag: tabDetails.rawValue)
    }
}
