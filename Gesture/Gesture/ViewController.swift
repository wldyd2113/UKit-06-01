//
//  ViewController.swift
//  Gesture
//
//  Created by 차지용 on 5/22/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let rectangle = UIView()
        rectangle.backgroundColor = .yellow
        rectangle.frame = CGRect(x: 100, y: 100, width: 175, height: 125)
        rectangle.isUserInteractionEnabled = true
        
        view.addSubview(rectangle)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        tapGesture.numberOfTapsRequired = 2 //tap을 하는 최소한의 횟수
        rectangle.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap(_ sender: UITapGestureRecognizer) {
        if let view = sender.view {
            view.backgroundColor = (view.backgroundColor == .yellow) ? .red : .yellow
        }
    }


}

