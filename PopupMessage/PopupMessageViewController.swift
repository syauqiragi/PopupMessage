//
//  PopupMessageViewController.swift
//  PopupMessage
//
//  Created by Ahmad Syauqi Albana on 18/03/21.
//

import UIKit

class PopupMessageViewController: UIViewController {
    
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var noButton: UIButton!
    @IBOutlet weak var yesButton: UIButton!
    
    @IBAction func tapNoButton(_ sender: Any) {
        dismiss(animated: true, completion: {
            self.onTapNoButton?()
        })
    }
    
    @IBAction func tapYesButton(_ sender: Any) {
        dismiss(animated: true, completion: {
            self.onTapYesButton?()
        })
    }
    
    var titlePopup = ""
    var descPopup = ""
    var buttonTitleYes = ""
    var buttonTitleNo = ""
    var onTapYesButton: (() -> Void)? = nil
    var onTapNoButton: (() -> Void)? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
}

extension PopupMessageViewController {
    func setupView() {
        titleLabel.text = titlePopup
        titleLabel.isHidden = titlePopup.isEmpty
        titleLabel.numberOfLines = 0
        descLabel.text = descPopup
        descLabel.isHidden = descPopup.isEmpty
        descLabel.numberOfLines = 0
        yesButton.setTitle(buttonTitleYes, for: .normal)
        yesButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        noButton.setTitle(buttonTitleNo, for: .normal)
        noButton.titleLabel?.font = .boldSystemFont(ofSize: 16)
        noButton.isHidden = buttonTitleNo.isEmpty
    }
}
