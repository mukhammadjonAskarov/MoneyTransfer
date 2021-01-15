//
//  SceneDelegate.swift
//  MoneyTransfer
//
//  Created by Mukhammadjon Askarov on 11/01/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(frame: windowScene.coordinateSpace.bounds )
        window?.windowScene = windowScene
        window?.rootViewController = createTabBar()
        window?.makeKeyAndVisible()
        configureNavigationBar()
    }
    
    func createTransferNavigationController()-> UINavigationController {
        let transferVC = TransferVC()
        transferVC.title = "Transfer"
      //  transferVC.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
       // transferVC.tabBarItem = UITabBarItem(UIImage(systemName: "arrow.up.down.circle"), tag: 0)
        transferVC.tabBarItem = UITabBarItem(title: "Transfer", image: UIImage(systemName:"arrow.up.down.circle.fill"), tag: 0)
        
        return UINavigationController(rootViewController: transferVC)

    }
    
    func createCardsNavigationController() -> UINavigationController {
        let cardsVC = CardsVC()
        cardsVC.title = "Cards"
        cardsVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 1)
        
        return UINavigationController(rootViewController: cardsVC)
    }
    
    func createTransactionsNavigationController() -> UINavigationController {
        let transactionsVC = TransactionsVC()
        transactionsVC.title = "Transactions"
        transactionsVC.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 2)
        
        return UINavigationController(rootViewController: transactionsVC)
    }
    
    func createMenuNavigationController() -> UINavigationController {
        let menuVC = MenuVC()
        menuVC.title = "Menu"
        //menuVC.tabBarItem = UITabBarItem(tabBarSystemItem: .more, tag: 3)
        menuVC.tabBarItem = UITabBarItem(title: "Menu", image: UIImage(systemName: "line.horizontal.3"), tag: 3)
        
        return UINavigationController(rootViewController: menuVC)
    }
    
    func createTabBar()-> UITabBarController {
        
        let tabBar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        
        tabBar.viewControllers = [createTransferNavigationController(), createCardsNavigationController(), createTransactionsNavigationController(), createMenuNavigationController()]
        return tabBar
    }
    
    func configureNavigationBar(){
        UINavigationBar.appearance().tintColor  = .systemGreen
    }
    

    func sceneDidDisconnect(_ scene: UIScene) {
        
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
       
    }

    func sceneWillResignActive(_ scene: UIScene) {
        
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
       
    }


}

