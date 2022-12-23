import UIKit

import CartUI

class SettingsCoordinator: CoordinatorType {
  
  var presenter: UIViewController
  var children: [CoordinatorType]
  
  init() {
    self.children = []
    self.presenter = UINavigationController()
  }
  
  func start() {
    guard let presenter = self.presenter as? UINavigationController else {
      return
    }
    let settingsViewModel = SettingsViewModel(model: .init())
    let settingsViewController = SettingsViewController(viewModel: settingsViewModel)
    settingsViewController.title = "Settings"
    settingsViewController.tabBarItem.image = UIImage(systemName: "gearshape.fill")
    presenter.pushViewController(settingsViewController, animated: true)
  }
}
