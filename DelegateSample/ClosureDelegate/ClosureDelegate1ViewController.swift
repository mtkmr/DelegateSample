//
//  ClosureDelegate1ViewController.swift
//  DelegateSumple
//
//  Created by Masato Takamura on 2021/05/27.
//

import UIKit

final class ClosureDelegate1ViewController: UIViewController {
    
    //クロージャーを用意するが、ここではクロージャーの中身を実装せず
    var nextButtonDelegate1: ((UIViewController) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ClosureDelegate1"
    }
}

private extension ClosureDelegate1ViewController {
    @IBAction func nextButton(_ sender: UIButton) {
        nextButtonDelegate1?(self)
    }
}
