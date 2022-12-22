import UIKit

import CartUI

class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  var mainCoordinator: MainCoordinator?
  
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?
  ) -> Bool {
    self.window = UIWindow(frame: UIScreen.main.bounds)
    self.mainCoordinator = MainCoordinator(window: self.window)
    self.mainCoordinator?.start()
    
    return true
  }
}
