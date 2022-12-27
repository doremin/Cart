import Quick
import Nimble
import UIKit

import RxNimble

@testable import CartApp

class AppDelegateSpec: QuickSpec {
  override func spec() {
    var appDelegate: AppDelegate!
    
    beforeEach {
      appDelegate = AppDelegate()
    }
    print(NSStringFromClass(StubAppDelegate.self))
    
    describe("in app delegate") {
      context("did finish launching") {
        it("should return true") {
          expect(
            appDelegate.application(UIApplication.shared, didFinishLaunchingWithOptions: nil)
          ).to(equal(true))
        }
      }
    }
  }
}
