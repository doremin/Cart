import UIKit

import FlexLayout

final public class HomeViewController: BaseViewController {
  public override func viewDidLoad() {
    super.viewDidLoad()
    
    #if FLEXLAYOUT_SWIFT_PACKAGE
      print("adsad")
    #elseif KK
      print("asdsadsad")
    #endif
  }
  
  public override func loadView() {
    self.view = HomeView()
  }
}
