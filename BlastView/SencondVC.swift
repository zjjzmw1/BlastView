//
//  SencondVC.swift
//  BlastView
//
//  Created by zhangmingwei on 2018/2/23.
//  Copyright © 2018年 zhangmingwei. All rights reserved.
//

import UIKit

class SencondVC: UIViewController {
    var label: UILabel!
    var label2: UILabel!
    var label3: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "拖拽，点击爆炸效果类目"
        self.view.backgroundColor = UIColor.gray
        
        let btn = UIButton.init(frame: CGRect.init(x: 0, y: 64, width: 200, height: 60))
        btn.backgroundColor = UIColor.red
        btn.setTitle("复位", for: .normal)
        self.view.addSubview(btn)
        btn.addTarget(self, action: #selector(reloadAction), for: .touchUpInside)
        
        self.reloadAction()
    }
    
    // 复位
    @objc func reloadAction() {
        if label != nil {
            label.removeFromSuperview()
            label2.removeFromSuperview()
            label3.removeFromSuperview()
        }
        // 拖拽
        label = UILabel.init(frame: CGRect.init(x: 20, y: 150, width: 100, height: 100))
        label.text = "拖拽"
        label.textColor = UIColor.white
        label.backgroundColor = UIColor.red
        label.layer.masksToBounds = true
        label.layer.cornerRadius = 50
        label.textAlignment = .center
        view.addSubview(label)
        // 拖拽消失
        label.dragBlast = true
        // 图片帧动画
        label.isFragment = false
        label.blast { (isfinish) in
            print("3====\(isfinish)")
        }
        // 点击
        label2 = UILabel.init(frame: CGRect.init(x: 160, y: 150, width: 30, height: 30))
        label2.text = "点击"
        label2.textColor = UIColor.white
        label2.backgroundColor = UIColor.red
        label2.layer.masksToBounds = true
        label2.layer.cornerRadius = 15
        label2.textAlignment = .center
        view.addSubview(label2)
        // 可点击消失
        label2.tapBlast = true
        // 图片帧动画
        label2.isFragment = true
        label2.blast { (isfinish) in
            print("2====\(isfinish)")
        }
        // 都行
        label3 = UILabel.init(frame: CGRect.init(x: 260, y: 150, width: 40, height: 40))
        label3.text = "都行"
        label3.textColor = UIColor.white
        label3.backgroundColor = UIColor.red
        label3.layer.masksToBounds = true
        label3.layer.cornerRadius = 20
        label3.textAlignment = .center
        view.addSubview(label3)
        label3.isUserInteractionEnabled = true
        // 可点击消失
        label3.tapBlast = true
        // 拖拽消失
        label3.dragBlast = true
        // 图片帧动画
        label3.isFragment = false
        label3.blast { (isfinish) in
            print("3====\(isfinish)")
        }
        
        label.font = UIFont.systemFont(ofSize: 10)
        label2.font = UIFont.systemFont(ofSize: 10)
        label3.font = UIFont.systemFont(ofSize: 10)

    }
    
}
