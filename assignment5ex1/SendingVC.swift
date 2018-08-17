//
//  SendingVC.swift
//  assignment5ex1
//
//  Created by Andy Strungs on 8/17/18.
//  Copyright © 2018 Andy Strungs. All rights reserved.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data: String)
}

class SendingVC: UIViewController {
    
    @IBOutlet weak var dataEntryTextField: UITextField!
    
    var delegate: DataSentDelegate? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func sendBtnWasPressed(_ sender: Any) {
        if delegate != nil {
            if dataEntryTextField != nil {
                let data = dataEntryTextField.text
                delegate?.userDidEnterData(data: data!)
                dismiss(animated: true, completion: nil)
            }
        }
    }
    
}
