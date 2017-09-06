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
    
    func createImage(){
        let aImage = UIImage(named: "1")
        
        let rect = CGRect(x: 0, y: 0, width: 200, height: 200)
        let newImage = QPImageToor.cutImage(aImage!, rect)
        let imageView = UIImageView(image: newImage);
        imageView.frame = CGRect(x: 0, y: 64, width: (newImage?.size.width)!, height: (newImage?.size.height)!)
        self.view.addSubview(imageView)
    }
    
}
