import UIKit

import CartCore

import RxSwift
import RxCocoa
import FlexLayout
import PinLayout

final internal class BasketTableViewCell: UITableViewCell {
  
  internal var item = PublishSubject<BasketModel.Item>()
  
  private var disposeBag = DisposeBag()
  
  private let storeNameLabel: UILabel = {
    let label = UILabel()
    label.font = .systemFont(ofSize: 20, weight: .bold)
    label.textColor = .black
    label.textAlignment = .center
    return label
  }()
  
  private let priceLabel: UILabel = {
    let label = UILabel()
    label.font = .systemFont(ofSize: 16)
    label.textColor = .black
    label.textAlignment = .center
    return label
  }()
  
  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    self.contentView.flex.define { flex in
      flex.justifyContent(.spaceAround).alignItems(.center).direction(.row)
      flex.addItem(self.storeNameLabel).marginLeft(30)
      flex.addItem(self.priceLabel).height(20).width(100).marginRight(30)
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
    self.item
      .subscribe(onNext: { item in
        self.storeNameLabel.text = item.name
        self.priceLabel.text = "\(item.price)원"
      })
      .disposed(by: self.disposeBag)
  }
}
