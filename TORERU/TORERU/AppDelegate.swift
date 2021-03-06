//
//  AppDelegate.swift
//  TORERU
//
//  Created by Matsumoto Kazuki on 2017/11/09.
//  Copyright © 2017年 Matsumoto Kazuki. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        // ページを格納する配列
        var viewControllers: [UIViewController] = []
        // 1ページ目になるViewController
        let firstSB = UIStoryboard(name: "Main", bundle: nil)
        let firstVC = firstSB.instantiateInitialViewController()! as UIViewController
        firstVC.tabBarItem = UITabBarItem(title: "時間割表", image: UIImage(named: "tabBer_icon.png"), tag: 1)
        viewControllers.append(firstVC)
        // 2ページ目になるViewController
        let secondSB = UIStoryboard(name: "Scan", bundle: nil)
        let secondVC = secondSB.instantiateInitialViewController()! as UIViewController
        secondVC.tabBarItem = UITabBarItem(title: "入力", image: UIImage(named: "tabBer_icon2.png"), tag: 2)
        viewControllers.append(secondVC)
        // 3ページ目になるViewController
        let thirdSB = UIStoryboard(name: "SubjectList", bundle: nil)
        let thirdVC = thirdSB.instantiateInitialViewController()! as UIViewController
        thirdVC.tabBarItem = UITabBarItem(tabBarSystemItem: .contacts, tag: 3)
        viewControllers.append(thirdVC)
        // ViewControllerをセット
        let tabBarController = UITabBarController()
        tabBarController.setViewControllers(viewControllers, animated: false)
        // rootViewControllerをUITabBarControllerにする
        window = UIWindow()
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

