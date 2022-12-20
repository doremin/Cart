import CartCore

import RxSwift

final public class HomeViewModel: ViewModelType {
  public struct Input {
    
  }
  
  public struct Output {
    
  }
  
  public struct Model { }
  
  public var model: Model?
  public var input: Input
  public var output: Output
  
  public var disposeBag = DisposeBag()
  
  public init(model: Model? = nil) {
    self.model = model
    
    self.input = Input()
    self.output = Output()
  }
}
