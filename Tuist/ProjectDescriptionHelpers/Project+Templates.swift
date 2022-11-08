import ProjectDescription

extension Project {
  public static func app(
    name: String,
    bundleID: String,
    platform: Platform,
    dependencies: [TargetDependency],
    infoPlist: InfoPlist = .default
  ) -> Project {
    Project(
      name: name,
      targets: [
        Target(
          name: name,
          platform: platform,
          product: .app,
          bundleId: "\(bundleID).\(name)",
          infoPlist: infoPlist,
          sources: ["Sources/**"],
          dependencies: dependencies
        ),
        Target(
          name: name + "Tests",
          platform: platform,
          product: .unitTests,
          bundleId: "\(bundleID).\(name)Tests",
          sources: ["Tests/**"],
          dependencies: [
            .target(name: name),
            .external(name: "RxBlocking"),
            .external(name: "RxTest"),
            .external(name: "Quick"),
            .external(name: "Nimble"),
            .external(name: "RxNimble")
          ]
        )
      ]
    )
  }
  
  
  public static func framework(
    name: String,
    bundleID: String,
    platform: Platform,
    dependencies: [TargetDependency]
  ) -> Project {
    Project(
      name: name,
      targets: [
        Target(
          name: name,
          platform: .iOS,
          product: .framework,
          bundleId: "\(bundleID).\(name)",
          sources: ["Sources/**"],
          dependencies: dependencies
        ),
        Target(
          name: name + "Tests",
          platform: .iOS,
          product: .unitTests,
          bundleId: "\(bundleID).\(name)Tests",
          sources: ["Tests/**"],
          dependencies: [
            .target(name: name),
            .external(name: "RxBlocking"),
            .external(name: "RxTest"),
            .external(name: "Quick"),
            .external(name: "Nimble"),
            .external(name: "RxNimble")
          ]
        )
      ]
    )
  }
}
