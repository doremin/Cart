import RxSwift
import RxCocoa

import CartCore

final public class StoreViewModel: ViewModelType {
  public struct Input { }
  public struct Output {
    public let basketItems = BehaviorRelay<[BasketModel.Item]>(value: [])
    public let items = PublishRelay<[BasketModel.Item]>()
    public var isBasketButtonEnabled: Observable<Bool> {
      self.basketItems
        .distinctUntilChanged()
        .map { !$0.isEmpty }
    }
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
  public weak var coordinator: HomeCoordinator?
  
  public var disposeBag = DisposeBag()
  
  public init(model: Model) {
    self.model = model
    
    self.input = Input()
    self.output = Output()
    self.model.basketModel.items
      .bind(to: self.output.basketItems)
      .disposed(by: self.disposeBag)
  }
}
