//
//  UIKitIntegrationView.swift
//  Landmark
//
//  Created by Dvip Patel on 17/12/23.
//

import Foundation
import SwiftUI
import UIKit

struct UIKitIntegrationView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
        let viewController = UIViewController()
        let uiKitLabel = UILabel()
        uiKitLabel.text = "Hello, UIKit!"
        uiKitLabel.textColor = UIColor.systemBlue
        uiKitLabel.font = UIFont.systemFont(ofSize: 20)
        uiKitLabel.textAlignment = .center

        // Add constraints to center the label
        uiKitLabel.translatesAutoresizingMaskIntoConstraints = false
        viewController.view.addSubview(uiKitLabel)

        NSLayoutConstraint.activate([
            uiKitLabel.centerXAnchor.constraint(equalTo: viewController.view.centerXAnchor),
            uiKitLabel.centerYAnchor.constraint(equalTo: viewController.view.centerYAnchor)
        ])

        return viewController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
        // Update the UIKit view if needed
    }
}
