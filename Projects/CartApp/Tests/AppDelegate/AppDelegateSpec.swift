import Quick
import Nimble
import UIKit

import RxNimble

@testable import CartApp

class AppDelegateSpec: QuickSpec {
  override func spec() {
    var appDelegate: StubAppDelegate!
    
    beforeEach {
      appDelegate = StubAppDelegate()
    }
    
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
