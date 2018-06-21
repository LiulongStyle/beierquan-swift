//
//  MyTabBarController.swift
//  beierquan
//
//  Created by 刘龙 on 2018/6/20.
//  Copyright © 2018年 刘龙. All rights reserved.
//

import UIKit

class MyTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setText()
        addChildViewControllers()

    }
    
    private func setText(){
    UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.lightGray], for: UIControlState.normal)
    UITabBarItem.appearance().setTitleTextAttributes([NSAttributedStringKey.foregroundColor: UIColor.red], for: UIControlState.selected)
         // 设置图片选中时颜色必须设置（系统默认选中蓝色）
//        UITabBar.appearance().tintColor = UIColor.red
    }
    
    private func addChildViewControllers() {
        addChildViewController(childController: LLhomeViewContrller(), title: "有娃", imageName: "wwb_home_menu_bar_yw_icon_default", selectedImage: "wwb_home_menu_bar_yw_icon_press")
        addChildViewController(childController: LLselectViewController(), title: "精选", imageName: "wwb_home_menu_bar_jx_icon_default", selectedImage: "wwb_home_menu_bar_jx_icon_press")
        addChildViewController(childController: LLmessegeViewController(), title: "消息", imageName: "wwb_home_menu_bar_xx_icon_default", selectedImage: "wwb_home_menu_bar_xx_icon_press")
        addChildViewController(childController: LLmineViewController(), title: "我的", imageName: "wwb_home_menu_bar_wd_icon_default", selectedImage: "wwb_home_menu_bar_wd_icon_press")
    }
    
    private func addChildViewController(childController: UIViewController,title: String,imageName:String,selectedImage:String){
        childController.tabBarItem.image = UIImage(named: imageName)?.withRenderingMode(.alwaysOriginal)
        childController.tabBarItem.selectedImage = UIImage(named: selectedImage)?.withRenderingMode(.alwaysOriginal)
        childController.title = title
        let navC = MyNavigationController(rootViewController: childController)
        addChildViewController(navC)
    }


}
