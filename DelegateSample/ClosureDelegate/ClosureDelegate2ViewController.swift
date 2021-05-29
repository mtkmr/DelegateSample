//
//  ClosureDelegate2ViewController.swift
//  DelegateSumple
//
//  Created by Masato Takamura on 2021/05/27.
//

import UIKit

final class ClosureDelegate2ViewController: UIViewController {
    
    var nextButtonDelegate2: ((UIViewController) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "ClosureDelegate2"
    }
}

private extension ClosureDelegate2ViewController {
    @IBAction func nextButton(_ sender: UIButton) {
        nextButtonDelegate2?(self)
    }
}
