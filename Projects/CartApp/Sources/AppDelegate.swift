import UIKit

import CartUI

class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?
  ) -> Bool {
    self.window = UIWindow(frame: UIScreen.main.bounds)
    let viewModel = HomeViewModel()
    self.window?.rootViewController = HomeViewController(viewModel: viewModel)
    self.window?.makeKeyAndVisible()
    
    return true
  }
}
