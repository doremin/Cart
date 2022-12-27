import UIKit

import CartCore

import RxSwift
import RxCocoa
import FlexLayout
import PinLayout

final internal class StoreTableViewCell: UITableViewCell {
  
  internal var store = PublishSubject<Store>()
  
  private var disposeBag = DisposeBag()
  
  private let storeNameLabel: UILabel = {
    let label = UILabel()
    label.font = .systemFont(ofSize: 20, weight: .bold)
    label.textColor = .black
    return label
  }()
  
  private let storeImageView: UIImageView = {
    let imageView = UIImageView()
    imageView.contentMode = .scaleAspectFill
    imageView.backgroundColor = .gray
    return imageView
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    self.contentView.flex.define { flex in
      flex.addItem(self.storeNameLabel).alignSelf(.center).marginTop(10)
      flex.addItem(self.storeImageView).alignSelf(.center).height(150).width(250).marginTop(10)
    }
    
    self.bind()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    self.contentView.flex.layout()
  }
  
  private func bind() {
    self.store
      .subscribe(onNext: { [weak self] store in
        guard let self = self else { return }
        self.storeNameLabel.rx.text.onNext(store.name)
        
        URLSession.shared.rx.data(request: URLRequest(url: URL(string: store.thumbnailURL!)!))
          .map { UIImage(data: $0) }
          .bind(to: self.storeImageView.rx.image)
          .disposed(by: self.disposeBag)
      })
      .disposed(by: self.disposeBag)
  }
}
