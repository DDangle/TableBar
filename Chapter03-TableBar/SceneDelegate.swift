//
//  SceneDelegate.swift
//  Chapter03-TableBar
//
//  Created by 한규철 on 4/6/R4.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let _ = (scene as? UIWindowScene) else { return }
        
        //루트 뷰 컨트롤러를 UITabBarController로 캐스팅한다.
        if let tbC = self.window?.rootViewController as? UITabBarController {
            
            //탭바에서 탭바 아이템 배열을 가져온다.
            if let tbItems = tbC.tabBar.items {
                //텝 바 아이템에 커스텀 이미지를 등록한다.
                tbItems[0].image = UIImage(named: "designbump")?.withRenderingMode(.alwaysOriginal)
                tbItems[1].image = UIImage(named: "rss")?.withRenderingMode(.alwaysOriginal)
                tbItems[2].image = UIImage(named: "facebook")?.withRenderingMode(.alwaysOriginal)
                
                //텝 바 아이템 전체를 순회하면서 selectedImage 속성에 이미지를 설정한다.
                for tbItem in tbItems {
                    let image = UIImage(named: "checkmark")?.withRenderingMode(.alwaysOriginal)
                    
                    tbItem.selectedImage = image
                    
                    //탭 바 아이템별 텍스트 색상 속성을 설정한다.
                    tbItem.setTitleTextAttributes([.foregroundColor: UIColor.gray], for: .selected)
                    tbItem.setTitleTextAttributes([.foregroundColor: UIColor.red], for: .selected)
                    
                    //전체 아이템의 폰트 크기를 설정한다.
                    tbItem.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 15)], for: .normal)
                }
                
                //외형 프록시 객체를 이용하여 아이템의 타이틀 색상과 폰트 크기를 설정한다.
                let tbIemProxy = UITabBarItem.appearance()
                tbIemProxy.setTitleTextAttributes([.foregroundColor: UIColor.red], for: .selected)
                tbIemProxy.setTitleTextAttributes([.foregroundColor: UIColor.gray], for: .selected)
                tbIemProxy.setTitleTextAttributes([.font: UIFont.systemFont(ofSize: 15)], for: .normal)
//                tbItems[0].image = UIImage(named: "calendar")
//                tbItems[1].image = UIImage(named: "file-tree")
//                tbItems[2].image = UIImage(named: "photo")
//
                
                //텝 바 아이템에 타이틀을 설정한다.
                tbItems[0].title = "calendar"
                tbItems[1].title = "file"
                tbItems[2].title = "photo"
                
                
            }
            
            //텝바 아이템의 이미지 색상을 변경한다.
//            tbC.tabBar.tintColor = .white   //선택된 텝 바 아이템의 색상
//            tbC.tabBar.unselectedItemTintColor = .gray  //선택되지 않은 나머지 탭바 아이템의 색상
            
            //텝 바에 배경 이미지를 설정한다.
//            tbC.tabBar.backgroundImage = UIImage(named: "menubar-bg-mini")
//            tbC.tabBar.barTintColor = UIColor.black
            
        }
        
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

