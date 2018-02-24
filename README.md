# BlastView
swift4.0 版本：类似扣扣消息拖拽销毁的效果（UIView的类目，方便使用）
使用方法：
    一：导入：UIView+Blast.swift
    二：
    
    // 可点击消失 默认为false
    label.tapBlast = true
    // 拖拽消失 默认为false
    label.dragBlast = true
    /// 是否使用粒子动画 -- 默认为false (两种爆炸效果：粒子爆炸效果，多张图片帧动画爆炸效果)
    label.isFragment = false
    label.blast { (isfinish) in
    print("执行完成的回调")
    }
    
效果图：(录屏软件导致拖动快了效果不好，允许项目查看完美效果。)
![img](https://github.com/zjjzmw1/BlastView/blob/master/blast.gif)
