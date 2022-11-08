import ProjectDescription
import ProjectDescriptionHelpers

let workspace = Workspace(
  name: "Cart",
  projects: [
    .relativeToManifest("Projects/CartCore"),
    .relativeToManifest("Projects/CartUI"),
    .relativeToManifest("Projects/CartApp")
  ]
)
