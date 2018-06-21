//
//  MyNavigationController.swift
//  beierquan
//
//  Created by 刘龙 on 2018/6/20.
//  Copyright © 2018年 刘龙. All rights reserved.
//

import UIKit

class MyNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if viewControllers.count > 0 {
            viewController.hidesBottomBarWhenPushed  = true
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(named: "wwb_barl_return_btn"), style: .plain, target: self, action: #selector(navigationBack))
        }
        super.pushViewController(viewController, animated: true)
    }
    
    @objc private func navigationBack() {
        popViewController(animated: true)
    }

}
