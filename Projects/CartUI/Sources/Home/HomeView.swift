import UIKit

public final class HomeView: BaseView {
  
  private let rootContainer = UIView()
  
  public init() {
    super.init(frame: .zero)
    
    self.backgroundColor = .white
    
    self.rootContainer.flex.alignContent(.spaceAround).define { flex in
      flex.addItem(UIView()).backgroundColor(.black).height(10).marginBottom(20)
      flex.addItem(UIView()).backgroundColor(.red).height(10)
    }
    
    self.addSubview(self.rootContainer)
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public override func layoutSubviews() {
    super.layoutSubviews()
    
    self.rootContainer.pin.top(pin.safeArea).left().right()
    
    self.rootContainer.flex.layout()
  }
}
