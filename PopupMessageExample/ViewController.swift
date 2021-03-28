//
//  ViewController.swift
//  PopupMessageExample
//
//  Created by Ahmad Syauqi Albana on 28/03/21.
//

import UIKit
import PopupMessage

class ViewController: UIViewController {

    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBAction func onTapShowPopup(_ sender: Any) {
        PopupMessage.show(from: self, title: titleTextField.text ?? "", desc: messageTextField.text ?? "", buttonTitleYes: "Ok", buttonTitleNo: "No", onTapYesButton: nil, onTapNoButton: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

