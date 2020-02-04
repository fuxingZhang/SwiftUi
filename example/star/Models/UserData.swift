//
//  UserData.swift
//  star
//
//  Created by 张复星 on 2020/2/4.
//  Copyright © 2020 张复星. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: ObservableObject {
    @Published var language = NSLocale.current.identifier.hasPrefix("en") ? "en" : "cn"
}
