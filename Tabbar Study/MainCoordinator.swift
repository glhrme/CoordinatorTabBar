//
//  MainCoordinator.swift
//  Tabbar Study
//
//  Created by Guilherme de Assis dos Santos on 23/02/22.
//

import UIKit

class MainCoordinator {
    let window: UIWindow
    var navigation: UINavigationController?
    var tabBarHome: UITabBarController?
    
    init(_ window: UIWindow) {
        self.window = window
    }
    
    func start() {
        tabBarHome = UITabBarController()
        navigation = UINavigationController(rootViewController: tabBarHome!)
        let one = OneViewController()
        let two = TwoViewController()
        two.coordinator = self
        let navigationOne = UINavigationController(rootViewController: one)
        let navigationTwo = UINavigationController(rootViewController: two)
        
        
        one.tabBarItem = UITabBarItem(title: "1", image: .actions, tag: 0)
        
        two.tabBarItem = UITabBarItem(title: "2", image: .add, tag: 1)
        
        tabBarHome!.viewControllers = [navigationOne, navigationTwo]
        
        window.rootViewController = navigation
        window.makeKeyAndVisible()
    }
    
    func goThree() {
        let three = ThreeViewController()
        navigation?.pushViewController(three, animated: true)
    }
}
