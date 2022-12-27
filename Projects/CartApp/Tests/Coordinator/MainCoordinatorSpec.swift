import Quick
import Nimble

@testable import CartApp

class MainCoordinatorSpec: QuickSpec {
  override func spec() {
    var coordinator: MainCoordinator!
    var window: UIWindow!
    
    beforeEach {
      coordinator = MainCoordinator(window: window)
      window = UIWindow(frame: UIScreen.main.bounds)
    }
    
    describe("in coordinator initial state") {
      context("created") {
        it("should empty") {
          expect(coordinator.children).to(EmptyCollection())
        }
      }
    }
  }
}
