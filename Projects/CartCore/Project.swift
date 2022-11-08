import ProjectDescriptionHelpers
import ProjectDescription

let project = Project.framework(
  name: "CartCore",
  bundleID: "com.doremin",
  platform: .iOS,
  dependencies: [
    .external(name: "RxSwift"),
    .external(name: "RxCocoa")
  ]
)
