import RxSwift

public protocol StoreModelType {
  func loadStores() async -> [Store]
}

public final class StoreModel: StoreModelType {
  
  public init() { }
  
  public func loadStores() async -> [Store] {
    Task {
      try await Task.sleep(for: .seconds(2))
    }
    
    return Array(repeating: Store.stub, count: 5)
  }
}
