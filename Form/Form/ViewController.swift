//
//  ViewController.swift
//  Form
//
//  Created by 차지용 on 5/23/24.
//

import UIKit

class ViewController: UIViewController {
    let formOneLabel = UILabel()
    let formOneTextField = UITextField()
    let formTwoLabel = UILabel()
    let formTwoTextField = UITextField()
    let resultLabelOne = UILabel()
    let resultLabelTwo = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupFormOne()
        setupFormTwo()
        setupResults()
    }
    
    func setupFormOne() {
        formOneLabel.text = "이것은 첫 번째 폼입니다"
        formOneLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(formOneLabel)
        
        formOneTextField.borderStyle = .roundedRect
        formOneTextField.placeholder = "여기에 입력하세요"
        formOneTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(formOneTextField)
        
        NSLayoutConstraint.activate([
            formOneLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            formOneLabel.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 20),
            formOneTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            formOneTextField.leadingAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            formOneTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func setupFormTwo() {
        formTwoLabel.text = "이것은 두 번째 폼입니다"
        formTwoLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(formTwoLabel)
        
        formTwoTextField.borderStyle = .roundedRect
        formTwoTextField.placeholder = "여기에 입력하세요"
        formTwoTextField.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(formOneTextField)
        
        NSLayoutConstraint.activate([
            formTwoLabel.topAnchor.constraint(equalTo: formOneTextField.bottomAnchor, constant: 20),
            formTwoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            formTwoTextField.topAnchor.constraint(equalTo: formTwoLabel.bottomAnchor, constant: 10),
            formTwoTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            formTwoTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20)
        ])
    }
    
    func setupResults() {
        resultLabelOne.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(resultLabelOne)
        
        resultLabelTwo.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(resultLabelTwo)
        
        NSLayoutConstraint.activate([
            resultLabelOne.topAnchor.constraint(equalTo: formTwoTextField.bottomAnchor, constant: 20),
            resultLabelOne.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            resultLabelTwo.topAnchor.constraint(equalTo: resultLabelOne.bottomAnchor, constant: 10),
            resultLabelTwo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
        ])
    }


}

