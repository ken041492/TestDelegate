//
//  MainViewController.swift
//  Test
//
//  Created by imac-3700 on 2024/7/24.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var lbOutput: UILabel!
    
    @IBOutlet weak var btnClick: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("1235")
    }

    @IBAction func pushToNextView(_ sender: Any) {
        let nextVC = SecondViewController()
        nextVC.recieveText = "Hello"
        nextVC.delegate = self
        navigationController?.pushViewController(nextVC, animated: true)
    }
}

extension MainViewController: SecondViewControllerDelegate {
    func passData(data: String) {
        lbOutput.text = data
    }
}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    
}
