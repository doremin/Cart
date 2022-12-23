import UIKit

import RxSwift
import FlexLayout
import PinLayout

public class BaseView: UIView {
  
  internal let rootContainer: UIView
  internal var disposeBag = DisposeBag()
  
  public override init(frame: CGRect) {
    self.rootContainer = UIView()
    super.init(frame: frame)
    
    self.addSubview(self.rootContainer)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public override func layoutSubviews() {
    self.rootContainer.pin.all()
  }
}
