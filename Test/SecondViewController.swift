//
//  SecondViewController.swift
//  Test
//
//  Created by imac-3700 on 2024/7/24.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var lbMessage: UILabel!
    
    @IBOutlet weak var txfInput: UITextField!
    
    @IBOutlet weak var btnPush: UIButton!
    
    var inputText: String?
    
    var recieveText: String?
    
    var delegate: SecondViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lbMessage.text = recieveText ?? ""
        print("recieve: \(recieveText ?? "")")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        delegate?.passData(data: inputText ?? "")
    }

    @IBAction func inputText(_ sender: Any) {
        inputText = txfInput.text
        print(inputText ?? "")
    }

    @IBAction func pushToNext(_ sender: Any) {
        let MainVC = MainViewController()
        navigationController?.pushViewController(MainVC, animated: true)
    }
}

protocol SecondViewControllerDelegate {
    func passData(data: String)
}
