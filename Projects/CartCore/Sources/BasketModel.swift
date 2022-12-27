import RxSwift
import RxCocoa

protocol Basket {
  associatedtype Item: Equatable
  
  var items: BehaviorRelay<[Item]> { get }
  
  func add(item: Item)
  func remove(item: Item)
}

public class BasketModel: Basket {
  
  public struct Item: Equatable {
    public let name: String
    public let price: Int
    
    public init(name: String, price: Int) {
      self.name = name
      self.price = price
    }
  }
  
  public init() { }
  
  public let items = BehaviorRelay<[Item]>(value: [])
  
  public func add(item: Item) {
    items.accept(items.value + [item])
  }
  
  public func remove(item: Item) {
    items.accept(items.value.filter { $0 != item })
  }
  
}
