//
//  ViewController.swift
//  图片滚动
//
//  Created by mac on 2018/1/3.
//  Copyright © 2018年 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIScrollViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
   
        let scroll = UIScrollView()
        scroll.frame=CGRect(x: view.frame.size.width * 0.15, y: view.frame.size.height * 0.15, width: 300, height: 300)
        
        scroll.backgroundColor = UIColor.red
        view.addSubview(scroll)
        let img = UIImageView(image:UIImage.init(named:"1"))
        scroll.addSubview(img)

        scroll.contentSize = img.frame.size//滚动范围
        scroll.contentInset = UIEdgeInsets(top: 30,left: 30, bottom: 50,right: 50) //内边距
        scroll.contentOffset = CGPoint(x: 100 ,y: 100)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

