//
//  ViewController.swift
//  ProtocolDelegateDataPassing
//
//  Created by admin on 08/09/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var txtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnSubmitClicked(_ sender: Any) {
        let vc1 = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        vc1?.data = txtField.text ?? ""
        vc1?.delegate = self
        navigationController?.pushViewController(vc1!, animated: true)
    }
    
}

extension ViewController: PassDataBack {
    func passData(str: String) {
        txtField.text = str
    }
    
    
}

