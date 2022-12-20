import ProjectDescriptionHelpers
import ProjectDescription

let project = Project.framework(
  name: "CartUI",
  bundleID: "com.doremin",
  platform: .iOS,
  dependencies: [
    .external(name: "RxSwift"),
    .external(name: "RxCocoa"),
    .external(name: "SnapKit"),
    .project(target: "CartCore", path: .relativeToManifest("../CartCore")),
  ]
)
