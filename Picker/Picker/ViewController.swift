//
//  ViewController.swift
//  Picker
//
//  Created by 차지용 on 5/21/24.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    private lazy var pickerVew: UIPickerView = {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        return pickerView
    }()
    let options = ["Option 1", "Option 2", "Option 3", "Option 4", "Option 5"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(pickerVew)
        
        NSLayoutConstraint.activate([
            pickerVew.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pickerVew.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])

    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        options.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return options[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("selected row: \(row)")
    }


}

