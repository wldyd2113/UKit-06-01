//
//  ViewController.swift
//  SegmentedControl
//
//  Created by 차지용 on 5/21/24.
//

import UIKit

class ViewController: UIViewController {
    let segmentedControl = UISegmentedControl(items:["Red","Green", "Blue"])
    override func viewDidLoad() {
        super.viewDidLoad()
        
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.addAction(UIAction { [weak self] _ in
            switch self?.segmentedControl.selectedSegmentIndex {
            case 0:
                self?.view.backgroundColor = .red
                let normalTextAttribute: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.blue] //세그먼트안에 글자색 설정
                self?.segmentedControl.setTitleTextAttributes(normalTextAttribute, for: .normal) //세그먼트안에 글자색 설정
            case 1:
                self?.view.backgroundColor = .green
                let normalTextAttribute: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black]
                self?.segmentedControl.setTitleTextAttributes(normalTextAttribute, for: .normal)
            case 2:
                self?.view.backgroundColor = .blue
                let normalTextAttribute: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white]
                self?.segmentedControl.setTitleTextAttributes(normalTextAttribute, for: .normal)
            default:
                break
            }
        }, for: .valueChanged)
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.selectedSegmentTintColor = .red //세그먼트 안에 컬러 설정

        view.addSubview(segmentedControl)
        
        NSLayoutConstraint.activate([
            segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
        
        
    }


}

