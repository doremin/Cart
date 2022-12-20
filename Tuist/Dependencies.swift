import ProjectDescription

let dependency = Dependencies(
  carthage: CarthageDependencies([
    .github(path: "layoutBox/FlexLayout", requirement: .upToNext("1.3.18")),
    .github(path: "layoutBox/PinLayout", requirement: .upToNext("1.10.3"))
  ]),
  swiftPackageManager: SwiftPackageManagerDependencies([
    .remote(url: "https://github.com/ReactiveX/RxSwift.git", requirement: .upToNextMajor(from: "6.5.0")),
    .remote(url: "https://github.com/Quick/Quick.git", requirement: .upToNextMajor(from: "3.0.0")),
    .remote(url: "https://github.com/RxSwiftCommunity/RxNimble.git", requirement: .upToNextMajor(from: "6.0.0"))
  ]),
  platforms: [.iOS]
)
