//import Quick
//import Nimble
//
//import RxTest
//import RxBlocking
//
//@testable import CartCore
//@testable import CartUI
//
//class HomeViewModelSpec: QuickSpec {
//  
//  let scheduler = TestScheduler(initialClock: 0)
//  
//  override func spec() {
//    var storeModel: StoreModelType!
//    
//    beforeEach {
//      storeModel = StubStoreModel()
//    }
//    
//    describe("in Home View Model") {
//      var homeViewModel: HomeViewModel!
//      
//      beforeEach {
//        homeViewModel = HomeViewModel(model: .init(storeModel: storeModel))
//      }
//      
//      scheduler.scheduleAt(100) {
//        homeViewModel.loadStores()
//      }
//      
//      context("initial state") {
//        it("should be empty") {
//          expect(try homeViewModel.output.stores.toBlocking().first()).to(equal(nil))
//        }
//      }
//    }
//  }
//}
