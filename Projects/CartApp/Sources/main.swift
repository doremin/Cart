import UIKit

private func isTesting() -> Bool {
  return NSClassFromString("XCTestCase") != nil
}

private func appDelegateClassName() -> String {
  return isTesting() ? "CartAppTests.StubAppDelegate" : NSStringFromClass(AppDelegate.self)
}

_ = UIApplicationMain(
  CommandLine.argc,
  CommandLine.unsafeArgv,
  NSStringFromClass(UIApplication.self),
  appDelegateClassName()
)
