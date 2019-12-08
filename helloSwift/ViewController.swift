//
//  ViewController.swift
//  helloSwift
//
//  Created by 张啸宇 on 2019/12/8.
//  Copyright © 2019 xiaoyuu. All rights reserved.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let homeVC = HomeViewController()
        homeVC.tabBarItem.image = R.image.signature()
        homeVC.tabBarItem.selectedImage = R.image.signature()?.withRenderingMode(.alwaysOriginal)
        homeVC.tabBarItem.title = "Home"
        homeVC.tabBarItem.setTitleTextAttributes([.foregroundColor: UIColor.hexColor(0x333333)], for: .selected)
        let navigationHomeVC = UINavigationController(rootViewController: homeVC)
        self.addChild(navigationHomeVC)
        
        let mineVC = MineViewController()
        mineVC.tabBarItem.image = R.image.signature()
        mineVC.tabBarItem.selectedImage = R.image.signature()
        mineVC.tabBarItem.title = "Mine"
        mineVC.tabBarItem.setTitleTextAttributes([.foregroundColor: UIColor.hexColor(0x333333)], for: .selected)
        let navigationMineVC = UINavigationController(rootViewController: mineVC)
        self.addChild(navigationMineVC)
        
        // Do any additional setup after loading the view.
//        let button = UIButton(type: .custom)
//        button.setTitle("click", for: .normal)
//        button.setTitleColor(.black, for: .normal)
//        button.backgroundColor = .red
//        button.addTarget(self, action: #selector(didClickButton), for: .touchUpInside)
//
//        view.addSubview(button)
//        button.snp.makeConstraints { (make) in
//            make.left.top.equalTo(100)
//            make.width.equalTo(100)
//            make.height.equalTo(50)
//        }
        
        
    }
    
//    @objc func didClickButton() {
//        let loginVC = LoginViewController()
//        navigationController?.pushViewController(loginVC, animated: true)
//    }


}

