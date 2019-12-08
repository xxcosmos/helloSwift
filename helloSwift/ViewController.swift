//
//  ViewController.swift
//  helloSwift
//
//  Created by 张啸宇 on 2019/12/8.
//  Copyright © 2019 xiaoyuu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let button = UIButton(type: .custom)
        button.setTitle("click", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(didClickButton), for: .touchUpInside)
        
        view.addSubview(button)
        button.snp.makeConstraints { (make) in
            make.left.top.equalTo(100)
            make.width.equalTo(100)
            make.height.equalTo(50)
        }
    }
    
    @objc func didClickButton() {
        let loginVC = LoginViewController()
        navigationController?.pushViewController(loginVC, animated: true)
    }


}

