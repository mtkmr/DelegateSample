//
//  TopViewController.swift
//  DelegateSumple
//
//  Created by Masato Takamura on 2021/05/26.
//

import UIKit

final class TopViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Top"
    }
}

private extension TopViewController {
    @IBAction func toDelegate(_ sender: UIButton) {
        Coordinator.shared.startVC(nowVC: self)
    }
    
    @IBAction func toClosureDelegate(_ sender: UIButton) {
        ClosureCoordinator.shared.startVC(nowVC: self)
    }
}
