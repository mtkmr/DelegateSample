//
//  Delegate2ViewController.swift
//  DelegateSumple
//
//  Created by Masato Takamura on 2021/05/27.
//

import UIKit

protocol Delegate2ViewControllerDelegate: AnyObject {
    func nextButtonDelegate2(nowVC: Delegate2ViewController)
}

final class Delegate2ViewController: UIViewController {
    
    weak var delegate: Delegate2ViewControllerDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Delegate2"
    }
}

private extension Delegate2ViewController {
    @IBAction func nextButton(_ sender: UIButton) {
        delegate?.nextButtonDelegate2(nowVC: self)
    }
}
