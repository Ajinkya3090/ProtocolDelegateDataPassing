//
//  SecondViewController.swift
//  ProtocolDelegateDataPassing
//
//  Created by admin on 08/09/22.
//

import UIKit

protocol PassDataBack: AnyObject {
    func passData(str: String)
}

class SecondViewController: UIViewController {
    
    var data : String?
    weak var delegate : PassDataBack?
    @IBOutlet weak var btnDatapassBack: UIButton!
    @IBOutlet weak var txtFieldName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txtFieldName.text = data

    }

    @IBAction func btnDatatbackPassing(_ sender: Any) {
        delegate!.passData(str: txtFieldName.text!)
        navigationController?.popViewController(animated: true)
    }
}
