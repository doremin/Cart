import UIKit

public class BaseView: UIView {
  public override init(frame: CGRect) {
    super.init(frame: frame)
    
    self.backgroundColor = .white
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}