public struct Store {
  let id: Int
  let name: String
  let isOpen: Bool
  let thumbnailURL: String?
}

public extension Store {
  static var stub: Self {
    return Store(
      id: 2,
      name: "테스트 가게",
      isOpen: true,
      thumbnailURL: "https://png.pngtree.com/thumb_back/fh260/background/20210907/pngtree-indoor-daytime-tables-and-chairs-cafes-placed-photographs-and-pictures-image_816238.jpg"
    )
  }
}
