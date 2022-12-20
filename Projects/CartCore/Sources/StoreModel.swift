import RxSwift

public final class StoreModel {
  func loadStores() async -> [Store] {
    Task {
      try await Task.sleep(for: .seconds(2))
    }
    
    return []
  }
}
