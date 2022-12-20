import UIKit

import PinLayout
import FlexLayout

final public class HomeViewController: BaseViewController {
  public override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  public override func loadView() {
    self.view = HomeView()
  }
}
