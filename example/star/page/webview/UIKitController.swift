//
//  UIKitController.swift
//  star
//
//  Created by 张复星 on 2020/1/17.
//  Copyright © 2020 张复星. All rights reserved.
//

import SwiftUI
import UIKit
import Foundation

class UIKitController: UIViewController {
    override func viewDidLoad() {
        view.addSubview(button)
    }
    
    lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("open swiftui view", for: .normal)
        button.titleLabel?.font = .boldSystemFont(ofSize: 30)
        button.setTitleColor(.orange, for: .normal)
        button.sizeToFit()
        button.center = view.center
        button.addTarget(self, action: #selector(openContentView), for: .touchUpInside)
        
        return button
    }()
    
    @objc func openContentView(){
        let hostVC = UIHostingController(rootView: ContentView())
        present(hostVC, animated: true, completion: nil)
    }
}

