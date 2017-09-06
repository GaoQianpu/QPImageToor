//
//  ViewController.swift
//  imageDemo
//
//  Created by 枫、 on 2017/8/31.
//  Copyright © 2017年 枫、. All rights reserved.
//

import UIKit

class ViewController: QPBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //图片拉伸
    @IBAction func StretchClicked(_ sender: UIButton) {
        let viewController = StretchViewController()
        push(viewController)
    }
    //改变图片size
    @IBAction func upDataSizeClicked(_ sender: UIButton) {
        let viewController = upDataSizeViewController()
        push(viewController)
    }
    //裁剪图片
    @IBAction func cuteImageClicked(_ sender: UIButton) {
        let viewController = cutImageViewController()
        push(viewController)
    }
    //图片拼接
    @IBAction func puzzleClicked(_ sender: UIButton) {
        let viewController = PuzzleViewController()
        push(viewController)
    }
}

