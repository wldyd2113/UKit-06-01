//
//  ViewController.swift
//  KeyboardHandling
//
//  Created by 차지용 on 5/23/24.
//

import UIKit

class ViewController: UIViewController {
    let textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        textField.borderStyle = .roundedRect
        textField.placeholder = "여기에 입력하세요"
        textField.translatesAutoresizingMaskIntoConstraints = false //오토레이아웃 설정
        
        view.addSubview(textField)
        
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textField.centerYAnchor.constraint(equalTo: view.centerYAnchor,constant: 100),

        ])
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapHandler)) //키보드 내리는 gesture
        view.addGestureRecognizer(tapGesture)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWilShow), name: UIResponder.keyboardWillShowNotification, object: nil) //키보드를 올림
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWilHide), name: UIResponder.keyboardWillHideNotification, object: nil) //키보드 내림
    }
    
    @objc func tapHandler(_ sender: UIView) {
        textField.resignFirstResponder()
    }
    
    @objc func keyboardWilShow(_ notification: Notification) { //키보드 올림
        print("keyboard up")
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue  {
            let keyboardHeightSize = keyboardSize.height
            if view.frame.origin.y == 0 {
                view.frame.origin.y -= keyboardHeightSize
            }
        }
    }
    
    @objc func keyboardWilHide(_ notification: Notification) { //키보드 내림
        print("keyboard down")
        if view.frame.origin.y != 0 {
            view.frame.origin.y = 0
        }
    }


}

