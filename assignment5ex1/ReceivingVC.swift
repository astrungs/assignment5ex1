//
//  ReceivingVC.swift
//  assignment5ex1
//
//  Created by Andy Strungs on 8/17/18.
//  Copyright © 2018 Andy Strungs. All rights reserved.
//

import UIKit

class ReceivingVC: UIViewController, DataSentDelegate {

    @IBOutlet weak var receivingLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func userDidEnterData(data: String) {
        receivingLabel.text = data
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showSendingVC" {
            let sendingVC: SendingVC = segue.destination as! SendingVC
            sendingVC.delegate = self
        }
    }
    
}

