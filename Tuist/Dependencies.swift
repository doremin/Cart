import ProjectDescription

let dependency = Dependencies(
  carthage: CarthageDependencies([
    .github(path: "layoutBox/FlexLayout", requirement: .branch("master")),
    .github(path: "layoutBox/PinLayout", requirement: .branch("master")),
  ]),
  swiftPackageManager: SwiftPackageManagerDependencies([
    .remote(url: "https://github.com/ReactiveX/RxSwift.git", requirement: .upToNextMajor(from: "6.5.0")),
    .remote(url: "https://github.com/Quick/Quick.git", requirement: .upToNextMajor(from: "3.0.0")),
    .remote(url: "https://github.com/RxSwiftCommunity/RxNimble.git", requirement: .upToNextMajor(from: "6.0.0"))
  ]),
  platforms: [.iOS]
)
