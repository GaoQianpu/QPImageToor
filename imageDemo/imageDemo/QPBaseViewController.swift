//
//  QPBaseViewController.swift
//  imageDemo
//
//  Created by 枫、 on 2017/9/1.
//  Copyright © 2017年 枫、. All rights reserved.
//

import UIKit

let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height

class QPBaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
extension QPBaseViewController{
    func push(_ viewController: UIViewController){
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    //显示原图
    func showOriginalImage(_ name: String){
        let image = UIImage(named: name)
        let size = image?.size
        let imageView = UIImageView(image: image)
        imageView.frame = CGRect(x: 0.0, y: 64, width: (size?.width)!, height: (size?.height)!)
        imageView.tag = 1
        self.view.addSubview(imageView)
    }
    //添加右侧按钮
    func addRightBarBtn(){
        let rightBtn = UIBarButtonItem(title: "item", style: .plain, target: self, action: #selector(rightClick(_:)))
        self.navigationItem.rightBarButtonItem = rightBtn;
    }
    func rightClick(_ item: UIBarButtonItem){
    }
}
