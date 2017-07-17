//
//  ViewController.swift
//  Sample
//
//  Created by Meniny on 2017-07-17.
//  Copyright © 2017年 Meniny. All rights reserved.
//

import UIKit
import Dialog

class ViewController: UIViewController {

    var type: UInt32 = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func showDialog(_ sender: UIButton) {
        switch type {
        case 0:
            let d = Dialog.alert(title: "Greetings", message: "Hi there! How's going?")
            d.addAction(title: "Done", handler: { (dialog) -> (Void) in
                dialog.dismiss()
            })
            d.show(in: self)
            
            break
        case 1:
            let d = Dialog.alert(title: "Dialog", message: "Check out my avatar!", image: #imageLiteral(resourceName: "avatar"))
            d.rightToolStyle = { (button) in
                button.setImage(#imageLiteral(resourceName: "share"), for: .normal)
                button.tintColor = .lightGray
                return true
            }
            d.rightToolAction = { (button) in
                d.addAction(title: "Done", handler: { (dialog) -> (Void) in
                    dialog.dismiss()
                })
            }
            d.addAction(title: "Add a Button", handler: { (dialog) -> (Void) in
                dialog.addAction(title: "Remove the Last Button", handler: { (dia) -> (Void) in
                    dialog.removeAction(at: dia.actions.count - 1)
                })
            })
            d.show(in: self)
            break
        default:
            let d = Dialog.loading(title: "Logging in", message: "Please wait...", image: #imageLiteral(resourceName: "avatar"))
            d.show(in: self)
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3, execute: {
                d.dismiss()
            })
        }
        if type >= 2 {
            type = 0
        } else {
            type += 1
        }
    }

}

