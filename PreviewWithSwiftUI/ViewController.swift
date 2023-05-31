//
//  ViewController.swift
//  PreviewWithSwiftUI
//
//  Created by Дмитрий Дмитрий on 31.05.2023.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let label: UILabel = {
        let label = UILabel()
        label.text = "Hello, World!"
        label.textColor = .black
        label.font = .systemFont(ofSize: 30, weight: .semibold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        setupConstraints()
    }

    private func setupConstraints() {
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

struct ViewControllerProvider: PreviewProvider {
    static var previews: some View {
        ViewController().showPreview()
    }
}
