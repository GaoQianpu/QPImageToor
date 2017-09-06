//
//  PuzzleViewController.swift
//  imageDemo
//
//  Created by 枫、 on 2017/9/5.
//  Copyright © 2017年 枫、. All rights reserved.
//

import UIKit

class PuzzleViewController: QPBaseViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
                
        puzzImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //多张图片的拼接
    func puzzImage(){
        
        let image1 = UIImage(named: "1")
        let image2 = UIImage(named: "2")
        //讲两张图设置为等宽
        let im1 = QPImageToor.upDataImageSize(image1!, CGSize(width: 200, height: 200 * (image1?.size.height)! / (image1?.size.width)!))
        let im2 = QPImageToor.upDataImageSize(image2!, CGSize(width: 200, height: 200 * (image2?.size.height)! / (image2?.size.width)!))
        
        //拼接尺寸及坐标
        let rect1 = CGRect(x: 0, y: 0, width: (im1?.size.width)!, height: (im1?.size.height)!)
        let rect2 = CGRect(x: 0, y: (im1?.size.height)! + 5, width: (im2?.size.width)!, height: (im2?.size.height)!)
        
        let size = CGSize(width: 200, height: (im1?.size.height)! + (im2?.size.height)! + 5)
        
        UIGraphicsBeginImageContextWithOptions(size, false, 2.0)
        im1?.draw(in: rect1)
        im2?.draw(in: rect2)
        let drawImage = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        let imageView = UIImageView(image: drawImage!)
        imageView.frame = CGRect(x: 100, y: 64, width: (drawImage?.size.width)!, height: (drawImage?.size.height)!)
        self.view.addSubview(imageView)
    }
    
    
    
    
}
