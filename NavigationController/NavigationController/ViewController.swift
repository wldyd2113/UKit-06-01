//
//  ViewController.swift
//  NavigationController
//
//  Created by 차지용 on 5/23/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        둘 다 가능
//        self.navigationItem.title = "네이게이션 타이틀"
        self.title = "네이게이션 타이틀"
        self.navigationController?.navigationBar.barStyle = .default
        self.navigationController?.navigationBar.isTranslucent = true //페어링설정
        self.navigationController?.navigationBar.tintColor = .white
        self.navigationController?.navigationBar.backgroundColor = .systemBrown
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        let leftButton = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(leftButtonTapped))
        self.navigationItem.leftBarButtonItem = leftButton
        
        let rightButton = UIBarButtonItem(title: "완료", style: .done, target: self, action: #selector(rightButtonTapped))
        let extraButton = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(extraButtonTapped))
        
        self.navigationItem.rightBarButtonItems = [rightButton, extraButton]
    }
    
    @objc func leftButtonTapped() {
        print("왼쪽 버튼 탬됨")
    }
    
    @objc func rightButtonTapped() {
        print("오른쪽 버튼 탬됨")
    }
    
    @objc func extraButtonTapped() {
        print("추가 버튼 탬됨")
    }


}
