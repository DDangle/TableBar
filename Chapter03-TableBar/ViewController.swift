//
//  ViewController.swift
//  Chapter03-TableBar
//
//  Created by 한규철 on 4/6/R4.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //title 레이블 생성
        let title = UILabel(frame: CGRect(x: 0, y: 100, width: 100, height: 30))
        //let frame = CGRect(x, y, width, height)
        //let title = UILabel(frame : frame) 이 두구문을 합친것
      
        
        //title 레이블 속성 설정
        title.text = "첫번째 탭"
        title.textColor = .red  //텍스트는 빨간색
        title.textAlignment = .center   //레아블 내에서 중앙 정렬로
        title.font = UIFont.boldSystemFont(ofSize: 14)  //폰트는 System Font, 14pt
        //콘텐츠 내용에 맞게 레이블 크기 설정
        title.sizeToFit()
        //X축 중앙에 오독록 설정
        title.center.x = self.view.frame.width / 2  //중앙 정렬 하기전 사이즈 투 핏을 먼저 호출할것
        //수퍼 뷰에 추가
        self.view.addSubview(title)
        
//        //탭 바 아이템에 커스텀 이미지를 등록하고 탭 이름을 입력한다.
//        self.tabBarItem.image = UIImage(named: "calendar.png")
//        self.tabBarItem.title = "Calendar"
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        let tabBar = self.tabBarController?.tabBar
        tabBar?.isHidden = (tabBar?.isHidden == true ? false : true) //(참 또는 거짓으로 판단되는 조건식 )? 참일때의값 : 거짓일때의값
//        UIView.animate(withDuration: TimeInterval, animations: () -> Void)
        UIView.animate(withDuration: TimeInterval(0.15)) {
            //alpha 값이 0이면 1로, 1이면 0으로 바꾸어준다.
            //호출될 때마다 점점 투명해졌다가 점점 진해질 것이다.
            tabBar?.alpha = ( tabBar?.alpha == 0 ? 1 : 0)
        }
        
    }
    //일반적인 내비게이션 바에서 타이틀을 설정하는 구문
//    self.navigationItem.title = "게시물 목록"
    
}

