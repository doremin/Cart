import UIKit

import CartCore

public protocol CoordinatorType: AnyObject {
  
  var presenter: UIViewController { get }
  var children: [CoordinatorType] { get set }
  
  func start()
}

public class MainCoordinator: CoordinatorType {
  public var presenter: UIViewController
  public var children: [CoordinatorType]
  
  let window: UIWindow?
  
  public init(window: UIWindow?) {
    self.window = window
    self.children = []
    self.presenter = UITabBarController()
  }
  
  public func start() {
    guard let presenter = self.presenter as? UITabBarController else {
      return
    }
    
    self.setupChildren()
    
    presenter.setViewControllers(
      self.children.map { $0.presenter },
      animated: true
    )
    
    self.window?.rootViewController = self.presenter
    self.window?.makeKeyAndVisible()
  }
  
  private func setupChildren() {
    let basket = BasketModel()
    self.children = [HomeCoordinator(basketModel: basket), SettingsCoordinator(baksetModel: basket)]
    self.children.forEach { $0.start() }
  }
}
