//
//  NoDelegate2ViewController.swift
//  DelegateSumple
//
//  Created by Masato Takamura on 2021/05/27.
//

import UIKit

final class NoDelegate2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "NoDelegate2"
    }
}

private extension NoDelegate2ViewController {
    @IBAction func nextButton(_ sender: UIButton) {
        guard let vc = UIStoryboard(name: "NoDelegate3", bundle: nil).instantiateInitialViewController() else {
            return
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
