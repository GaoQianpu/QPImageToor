//
//  StretchViewController.swift
//  imageDemo
//
//  Created by 枫、 on 2017/9/1.
//  Copyright © 2017年 枫、. All rights reserved.
//

import UIKit

class StretchViewController: QPBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // 显示原图
        showOriginalImage("气泡")
        // 获取图片
        let image = QPImageToor.stretchiMage(UIImage(named: "气泡")!)
        // 展示
        let imageView = UIImageView(image: image!)
        //图片为可拉伸，size可根据需求，自行设置
        imageView.frame = CGRect(x: 20, y: 200, width: kScreenWidth - 40, height: 50)
        self.view.addSubview(imageView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
