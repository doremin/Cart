import CartCore

import RxCocoa
import RxSwift

final public class HomeViewModel: ViewModelType {
  public struct Input {
    
  }
  
  public struct Output {
    public let stores: PublishRelay<[Store]>
    
    internal init() {
      self.stores = .init()
    }
  }
  
  public struct Model {
    public let storeModel: StoreModelType
    
    public init(storeModel: StoreModelType) {
      self.storeModel = storeModel
    }
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
  
  public func loadStores() {
    Task {
      let stores = await self.model.storeModel.loadStores()
      self.output.stores.accept(stores)
    }
  }
  
  public func selectStore(store: Store) {
    print(store)
  }
}
