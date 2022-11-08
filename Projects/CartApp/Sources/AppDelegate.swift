//
//  AppDelegate.swift
//  CartApp
//
//  Created by doremin on 2022/11/08.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?
  ) -> Bool {
    self.window = UIWindow(frame: UIScreen.main.bounds)
    let a = UIViewController()
    a.view.backgroundColor = .yellow
    self.window?.rootViewController = a
    self.window?.makeKeyAndVisible()
    
    return true
  }
}
