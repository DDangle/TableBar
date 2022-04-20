//
//  SecondViewController.swift
//  Chapter03-TableBar
//
//  Created by 한규철 on 4/6/R4.
//

import UIKit

class SecondViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        
        title.text = "두번째 탭"
        title.textColor = .red  //텍스트는 빨간색으로
        title.textAlignment = .center   //레이블 내에서 중앙정렬로
        title.font = UIFont.boldSystemFont(ofSize: 14)  //폰트는 시스템폰트
        
        title.sizeToFit()   //콘텐츠 내용에 맞게 레이블 크기변경
        title.center.x = self.view.frame.width / 2  //x축의 중앙애 오도록
        
        self.view.addSubview(title)
        
    }
}
