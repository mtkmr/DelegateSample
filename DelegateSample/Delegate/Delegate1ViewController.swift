//
//  Delegate1ViewController.swift
//  DelegateSumple
//
//  Created by Masato Takamura on 2021/05/27.
//

import UIKit


protocol Delegate1ViewControllerDelegate: AnyObject {
    func nextButtonDelegate1(nowVC: Delegate1ViewController)
}

final class Delegate1ViewController: UIViewController {
    
    weak var delegate: Delegate1ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Delegate1"
    }
}

private extension Delegate1ViewController {
    @IBAction func nextButton(_ sender: UIButton) {
        //中身は空なので、委譲先に中身の実装を任せる
        delegate?.nextButtonDelegate1(nowVC: self)
    }
}
