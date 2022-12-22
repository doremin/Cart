import UIKit

import CartUI

class HomeCoordinator: CoordinatorType {
  
  var presenter: UIViewController
  var children: [CoordinatorType]
  
  init() {
    self.presenter = UINavigationController()
    self.children = []
  }
  
  func start() {
    guard let presenter = self.presenter as? UINavigationController else {
      return
    }
    
    let homeViewModel = HomeViewModel()
    let homeViewController = HomeViewController(viewModel: homeViewModel)
    homeViewController.title = "Home"
    homeViewController.tabBarItem.image = UIImage(systemName: "house.fill")
    presenter.pushViewController(homeViewController, animated: true)
  }
}
