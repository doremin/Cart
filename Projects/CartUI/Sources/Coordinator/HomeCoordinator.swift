import UIKit

import CartCore

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
    
    let storeModel = StoreModel()
    let homeModel = HomeViewModel.Model(storeModel: storeModel)
    let homeViewModel = HomeViewModel(model: homeModel)
    let homeViewController = HomeViewController(viewModel: homeViewModel)
    homeViewController.title = "Home"
    homeViewController.tabBarItem.image = UIImage(systemName: "house.fill")
    presenter.pushViewController(homeViewController, animated: true)
  }
}
