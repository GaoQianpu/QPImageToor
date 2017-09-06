//
//  upDataSizeViewController.swift
//  imageDemo
//
//  Created by 枫、 on 2017/9/4.
//  Copyright © 2017年 枫、. All rights reserved.
//

import UIKit

class upDataSizeViewController: QPBaseViewController {
    
    var upDataImage: UIImage?
    var upDataImageView: UIImageView?
    override func viewDidLoad() {
        //添加按钮
        super.viewDidLoad()
        addRightBarBtn()
        // 显示原图
        showOriginalImage("1")  //按照原图尺寸，图片太大，无法显示完全
        // 改变size后的image
        createImageView()
    }

    override func rightClick(_ item: UIBarButtonItem){
        let imageView = self.view.viewWithTag(1) as! UIImageView
        if imageView.isHidden {
            imageView.isHidden = false
            upDataImageView?.isHidden = true
        }else{
            imageView.isHidden = true
            upDataImageView?.isHidden = false
        }
    }
    
    //创建imageView
    func createImageView(){
        let aImage = UIImage(named: "1")
        let bImage = QPImageToor.upDataImageSize(aImage!, CGSize(width: (aImage?.size.width)! * 0.3, height: (aImage?.size.height)! * 0.3))
        upDataImageView = UIImageView(image: bImage)
        upDataImageView?.frame = CGRect(origin: CGPoint(x: 0, y: 64), size: (bImage?.size)!)
        self.view.addSubview(upDataImageView!)
        upDataImageView?.isHidden = true
    }
    
}
