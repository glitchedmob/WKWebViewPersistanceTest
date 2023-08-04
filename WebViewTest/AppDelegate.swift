//
//  AppDelegate.swift
//  WebViewTest
//
//  Created by Levi Zitting on 8/3/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var mainViewController: MainViewController!
    var rootViewController: UIViewController!
    
    
    func application(_ application: UIApplication, willFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
                
                
        mainViewController = MainViewController()
        mainViewController.edgesForExtendedLayout = []
        
        let navigationController = UINavigationController(rootViewController: mainViewController)
//        navigationController.delegate = self
        navigationController.isNavigationBarHidden = true
        navigationController.edgesForExtendedLayout = UIRectEdge(rawValue: 0)
        rootViewController = navigationController

        self.window!.rootViewController = rootViewController
        
        return true
    }


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window?.makeKeyAndVisible()
    
        
        // Override point for customization after application launch.
        return true
    }

}

