//
//  PageIntro.swift
//  OnBoarding-SwiftUI
//
//  Created by Antonio Chavez Saucedo on 05/04/23.
//

import Foundation
import SwiftUI

struct PageIntro: Identifiable, Hashable{
    var id: UUID = .init()
    var introAssetImage: String
    var title: String
    var subtitle: String
    var displaysAction: Bool = false
}

var pageIntros: [PageIntro] = [
    .init(introAssetImage: "Page 1", title: "Connect\nwith tourist", subtitle: "Connect with people of faith locally & globally. Discover Chat & Engage"),
    .init(introAssetImage: "Page 2", title: "Discover\nnew things", subtitle: "Explore new things through our app. DIscover initiary & other stuffs"),
    .init(introAssetImage: "Page 3", title: "Share your\nmoments", subtitle: "Share you trip initiary with others. Let’s make the travel fun & enoyable", displaysAction: true)
]
