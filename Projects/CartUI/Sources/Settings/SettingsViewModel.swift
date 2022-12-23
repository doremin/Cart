import RxSwift

public class SettingsViewModel: ViewModelType {
  public struct Input { }
  public struct Output { }
  public struct Model {
    public init() { }
  }
  
  public var model: Model
  public var input: Input
  public var output: Output
  
  public var disposeBag = DisposeBag()
  
  public init(model: Model) {
    self.model = model
    
    self.input = Input()
    self.output = Output()
  }
}
