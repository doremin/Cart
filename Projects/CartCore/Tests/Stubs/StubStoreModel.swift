class StubStoreModel: StoreModelType {
  func loadStores() async -> [Store] {
    try? await Task.sleep(for: .seconds(2))
    
    return Array(repeating: Store.stub, count: 5)
  }
}
