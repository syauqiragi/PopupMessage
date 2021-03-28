//
//  PopupMessage.swift
//  PopupMessage
//
//  Created by Ahmad Syauqi Albana on 18/03/21.
//

import UIKit

public class PopupMessage {
    static func show(from viewController: UIViewController?, title: String, desc: String, buttonTitleYes: String = "Ok", buttonTitleNo: String = "", onTapYesButton: (() -> Void)? = nil, onTapNoButton: (() -> Void)? = nil) {
        
        let storyboard = UIStoryboard(name: "PopupMessageViewController", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "PopupMessageViewController") as! PopupMessageViewController
        controller.modalPresentationStyle = .overCurrentContext
        controller.titlePopup = title
        controller.descPopup = desc
        controller.buttonTitleYes = buttonTitleYes
        controller.buttonTitleNo = buttonTitleNo
        controller.onTapYesButton = onTapYesButton
        controller.onTapNoButton = onTapNoButton
        if viewController?.tabBarController != nil {
            viewController?.tabBarController?.present(controller, animated: true)
        } else {
            viewController?.present(controller, animated: true)
        }
    }
}
