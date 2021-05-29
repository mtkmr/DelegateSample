//
//  ClosureDelegate.swift
//  DelegateSumple
//
//  Created by Masato Takamura on 2021/05/27.
//

import UIKit

struct ClosureCoordinator {
    static let shared = ClosureCoordinator()
    private init() {}
    
    func startVC(nowVC: UIViewController) {
        guard let nav = nowVC.navigationController, let vc = UIStoryboard(name: "ClosureDelegate1", bundle: nil).instantiateInitialViewController() as? ClosureDelegate1ViewController else {
            return
        }
        vc.nextButtonDelegate1 = showClosureDelegate2VC
        nav.pushViewController(vc, animated: true)
    }
    
    var showClosureDelegate2VC: ((UIViewController) -> Void) = { (nowVC) -> Void in
        guard let nav = nowVC.navigationController, let vc = UIStoryboard(name: "ClosureDelegate2", bundle: nil).instantiateInitialViewController() as? ClosureDelegate2ViewController else {
            return
        }
        
        vc.nextButtonDelegate2 = ClosureCoordinator.shared.showClosureDelegate3VC
        nav.pushViewController(vc, animated: true)
    }
    
    var showClosureDelegate3VC: ((UIViewController) -> Void) = { (nowVC) -> Void in
        guard let nav = nowVC.navigationController, let vc = UIStoryboard(name: "ClosureDelegate3", bundle: nil).instantiateInitialViewController() as? ClosureDelegate3ViewController else {
            return
        }
        nav.pushViewController(vc, animated: true)
    }
}
