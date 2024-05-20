//
//  ViewController.swift
//  Text
//
//  Created by 차지용 on 5/20/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let paddingView = UIView()
        paddingView.translatesAutoresizingMaskIntoConstraints = false
        paddingView.backgroundColor = .blue
        
        let label = UILabel()
        label.text = "Stylized Text"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        label.textColor = .yellow
        label.backgroundColor = .red
        label.textAlignment = .center
        
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        
        paddingView.addSubview(label)
        view.addSubview(paddingView)

        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -20),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            paddingView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            paddingView.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            paddingView.widthAnchor.constraint(equalToConstant: 200),
            paddingView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }


}

