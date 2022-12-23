import UIKit

import FlexLayout
import PinLayout
import RxCocoa
import RxSwift

public class BaseViewController: UIViewController {
  internal var disposeBag = DisposeBag()
  public var _viewModel: any ViewModelType
  
  public init(viewModel: any ViewModelType) {
    self._viewModel = viewModel
    
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public override func viewDidLoad() {
    super.viewDidLoad()
    
    self.view.backgroundColor = .white
    self.bindViewModel()
  }
  
  internal func bindViewModel() {
    // Override point
  }
}
