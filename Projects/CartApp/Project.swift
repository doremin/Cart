import ProjectDescriptionHelpers
import ProjectDescription

let project = Project.app(
  name: "CartApp",
  bundleID: "com.doremin",
  platform: .iOS,
  dependencies: [
    .project(target: "CartCore", path: .relativeToManifest("../CartCore")),
    .project(target: "CartUI", path: .relativeToManifest("../CartUI"))
  ]
)
