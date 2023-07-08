import CartCore

import UIKit

class SettingsCoordinator: CoordinatorType {
  
  var presenter: UIViewController
  var children: [CoordinatorType]
  
  private let basketModel: BasketModel
  
  init(baksetModel: BasketModel) {
    self.children = []
    self.presenter = UINavigationController()
    self.basketModel = baksetModel
  }
  
  func start() {
    guard let presenter = self.presenter as? UINavigationController else {
      return
    }
    let settingsViewModel = SettingsViewModel(model: .init(basketModel: basketModel))
    let settingsViewController = SettingsViewController(viewModel: settingsViewModel)
    settingsViewController.title = "Bakset"
    settingsViewController.tabBarItem.image = UIImage(systemName: "gearshape.fill")
    presenter.pushViewController(settingsViewController, animated: true)
  }
}
