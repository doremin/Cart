import CartCore

import RxCocoa
import RxSwift

public class SettingsViewModel: ViewModelType {
  public struct Input { }
  public struct Output {
    public let items: PublishRelay<[BasketModel.Item]>
  }
  public struct Model {
    public let basketModel: BasketModel
    
    public init(basketModel: BasketModel) {
      self.basketModel = basketModel
    }
    
  }
  
  public var model: Model
  public var input: Input
  public var output: Output
  
  public var disposeBag = DisposeBag()
  
  public init(model: Model) {
    self.model = model
    
    self.input = Input()
    self.output = Output(
      items: .init()
    )
    
    self.model.basketModel.items
      .bind(to: self.output.items)
      .disposed(by: self.disposeBag)
  }
}
