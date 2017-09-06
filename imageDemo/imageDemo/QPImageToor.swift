//
//  QPImageToor.swift
//  imageDemo
//
//  Created by 枫、 on 2017/8/31.
//  Copyright © 2017年 枫、. All rights reserved.
//

import UIKit

class QPImageToor: NSObject {

    /**可拉伸image*/
    static func stretchiMage(_ image: UIImage) -> UIImage?{
        
        var newImage: UIImage?
        
        if #available(iOS 5.0, *) {
            // 高于 iOS 5.0
            if #available(iOS 6.0, *) {
                // 高于6.0
                // 设置端盖的值
                let top = image.size.height * 0.5
                let left = image.size.width * 0.5
                let bottom = image.size.height * 0.5
                let right = image.size.width * 0.5
                
                let edgeInsets = UIEdgeInsetsMake(top, left, bottom, right)
                // 设置拉伸的模式
                let mode: UIImageResizingMode = .stretch
                //拉伸图片
                newImage = image.resizableImage(withCapInsets: edgeInsets, resizingMode: mode)
            }else{
                // 低于6.0
                // 设置端盖的值
                let top = image.size.height * 0.5
                let left = image.size.width * 0.5
                let bottom = image.size.height * 0.5
                let right = image.size.width * 0.5
                
                let edgeInsets = UIEdgeInsetsMake(top, left, bottom, right)
                // 拉伸图片
                newImage = image.resizableImage(withCapInsets: edgeInsets)
            }
        } else {
            // 低于 iOS 5.0
            // 设置左边端盖宽度
            let leftCapWidth: Int = Int(image.size.width * 0.5)
            // 设置上边端盖高度
            let topCapHeight: Int = Int(image.size.height * 0.5)
            newImage = image.stretchableImage(withLeftCapWidth: leftCapWidth, topCapHeight: topCapHeight)
        }
        
        return newImage
    }
    
    /**改变image的size*/
    static func upDataImageSize(_ image: UIImage, _ size: CGSize) -> UIImage?{
        let rect = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 2.0)
        image.draw(in: rect)
        let scaledImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return scaledImage
    }
    /**裁剪image---此处为正方形*/
    static func cutImage(_ image:UIImage)-> UIImage?{
        var point = CGPoint.zero
        var size = CGSize.zero
        
        if image.size.width > image.size.height {
            point = CGPoint(x: (image.size.width - image.size.height) * 0.5, y: 0)
            size.height = image.size.height
            size.width = image.size.height
        }else{
            point = CGPoint(x: 0, y: (image.size.height - image.size.width) * 0.5)
            size.width = image.size.width
            size.height = image.size.width

        }
        
        let imageRef = image.cgImage
        let subImageRef = imageRef!.cropping(to: CGRect(origin: point, size: size))
        let newImage = UIImage(cgImage: subImageRef!)
        return newImage
    }
    
    
}




























