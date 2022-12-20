import UIKit

//import FlexLayout
import PinLayout
import RxCocoa
import RxSwift

public class BaseViewController: UIViewController {
  private var disposeBag = DisposeBag()
  public var viewModel: any ViewModelType
  
  public init(viewModel: any ViewModelType) {
    self.viewModel = viewModel
    
    super.init(nibName: nil, bundle: nil)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
