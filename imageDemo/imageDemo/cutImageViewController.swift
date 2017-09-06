//
//  cutImageViewController.swift
//  imageDemo
//
//  Created by 枫、 on 2017/9/4.
//  Copyright © 2017年 枫、. All rights reserved.
//

import UIKit

class cutImageViewController: QPBaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        createImage()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //切正方形
    func createImage(){
        let aImage = UIImage(named: "2")
        
        let newImage = QPImageToor.cutImage(aImage!)
        let sizeImage = QPImageToor.upDataImageSize(newImage!, CGSize(width: 200, height: 200))
        let imageView = UIImageView(image: sizeImage);
        imageView.frame = CGRect(x: 0, y: 64, width: (sizeImage?.size.width)!, height: (sizeImage?.size.height)!)
        self.view.addSubview(imageView)
    }
    
}
