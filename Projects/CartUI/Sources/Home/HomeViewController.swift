import UIKit

import SnapKit

final public class HomeViewController: BaseViewController {
  public override func viewDidLoad() {
    super.viewDidLoad()
    
  }
  
  public override func loadView() {
    self.view = HomeView()
  }
}
