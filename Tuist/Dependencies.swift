import ProjectDescription

let dependency = Dependencies(
  swiftPackageManager: SwiftPackageManagerDependencies([
    .remote(url: "https://github.com/ReactiveX/RxSwift.git", requirement: .upToNextMajor(from: "6.5.0")),
    .remote(url: "https://github.com/Quick/Quick.git", requirement: .upToNextMajor(from: "3.0.0")),
    .remote(url: "https://github.com/RxSwiftCommunity/RxNimble.git", requirement: .upToNextMajor(from: "6.0.0")),
    .remote(url: "https://github.com/SnapKit/SnapKit.git", requirement: .upToNextMajor(from: "5.0.1"))
  ]),
  platforms: [.iOS]
)
