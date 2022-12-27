import UIKit

import CartCore

public class HomeCoordinator: CoordinatorType {
  
  public enum Destination {
    case home
    case store
  }
  
  public var presenter: UIViewController
  public var children: [CoordinatorType]
  
  init() {
    self.presenter = UINavigationController()
    self.children = []
  }
  
  public func start() {
    guard let presenter = self.presenter as? UINavigationController else {
      return
    }
    
    let storeModel = StoreModel()
    let homeModel = HomeViewModel.Model(storeModel: storeModel)
    let homeViewModel = HomeViewModel(model: homeModel)
    homeViewModel.coordinator = self
    let homeViewController = HomeViewController(viewModel: homeViewModel)
    homeViewController.title = "Home"
    homeViewController.tabBarItem.image = UIImage(systemName: "house.fill")
    presenter.pushViewController(homeViewController, animated: true)
  }
  
  public func moveTo(destination: Destination) {
    guard let presenter = self.presenter as? UINavigationController else {
      return
    }
    
    switch destination {
    case .home:
      presenter.popToRootViewController(animated: true)
    case .store:
      let basket = BasketModel()
      basket.add(item: .init(name: "당근", price: 1500))
      let viewModel = StoreViewModel(model: .init(basketModel: basket))
      presenter.pushViewController(StoreViewController(viewModel: viewModel), animated: true)
    }
  }
}
