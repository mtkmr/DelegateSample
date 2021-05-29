//
//  Coordinator.swift
//  DelegateSumple
//
//  Created by Masato Takamura on 2021/05/27.
//

import UIKit

class Coordinator {
    //シングルトン
    static let shared = Coordinator()
    private init() {}
    
    func startVC(nowVC: UIViewController) {
        guard let nav = nowVC.navigationController, let vc = UIStoryboard(name: "Delegate1", bundle: nil).instantiateInitialViewController() as? Delegate1ViewController else {
            return
        }
        //ここでDelegate1の移譲先をselfに設定しておく
        //このように移譲先を指定する機会をあらかじめ作るように設計する必要がある。
        vc.delegate = self
        nav.pushViewController(vc, animated: true)
    }
}

extension Coordinator: Delegate1ViewControllerDelegate {
    func nextButtonDelegate1(nowVC: Delegate1ViewController) {
        guard let nav = nowVC.navigationController, let vc = UIStoryboard(name: "Delegate2", bundle: nil).instantiateInitialViewController() as? Delegate2ViewController else {
            return
        }
        //ここでDelegate2の移譲先をselfに設定しておく
        vc.delegate = self
        nav.pushViewController(vc, animated: true)
    }
}

extension Coordinator: Delegate2ViewControllerDelegate {
    func nextButtonDelegate2(nowVC: Delegate2ViewController) {
        guard let nav = nowVC.navigationController, let vc = UIStoryboard(name: "Delegate3", bundle: nil).instantiateInitialViewController() as? Delegate3ViewController else {
            return
        }
        nav.pushViewController(vc, animated: true)
    }
}
