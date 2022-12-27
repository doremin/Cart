import UIKit

import CartCore

import RxCocoa
import RxSwift

public final class HomeView: BaseView {

  internal let storeTableView = UITableView()
  internal var selectedStore = PublishRelay<Store>()
  
  public init() {
    super.init(frame: .zero)
    
    self.setupTableView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  public override func layoutSubviews() {
    super.layoutSubviews()
    
    self.rootContainer.flex.define { flex in
      flex.addItem(self.storeTableView).grow(1)
    }
    
    self.rootContainer.flex.layout()
  }
  
  private func setupTableView() {
    self.storeTableView.register(StoreTableViewCell.self, forCellReuseIdentifier: Constants.TableViewCellIdentifer.storeTableViewCell)
    self.storeTableView.rx.setDelegate(self)
      .disposed(by: self.disposeBag)
    
    self.storeTableView.rx.modelSelected(Store.self)
      .bind(to: self.selectedStore)
      .disposed(by: self.disposeBag)
    
    self.storeTableView.rx.itemSelected
      .observe(on: MainScheduler())
      .subscribe { [weak self] indexPath in
        self?.storeTableView.deselectRow(at: indexPath, animated: true)
      }
      .disposed(by: self.disposeBag)
  }
}

extension HomeView: UITableViewDelegate {
  public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 220
  }
}
