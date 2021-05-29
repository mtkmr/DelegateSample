//
//  NoDelegate1ViewController.swift
//  DelegateSumple
//
//  Created by Masato Takamura on 2021/05/27.
//

import UIKit

final class NoDelegate1ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "NoDelegate1"
    }
}

private extension NoDelegate1ViewController {
    @IBAction func nextButton(_ sender: UIButton) {
        guard let vc = UIStoryboard(name: "NoDelegate2", bundle: nil).instantiateInitialViewController() else {
            return
        }
        navigationController?.pushViewController(vc, animated: true)
    }
}
