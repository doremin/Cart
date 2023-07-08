//
//  SettingsView.swift
//  CartUI
//
//  Created by doremin on 2023/07/08.
//

import UIKit

public final class SettingsView: BaseView {
  
  internal let basketTableView = UITableView()
  
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
      flex.addItem(self.basketTableView).grow(1)
    }
    
    self.rootContainer.flex.layout()
  }
  
  private func setupTableView() {
    self.basketTableView.register(BasketTableViewCell.self, forCellReuseIdentifier: Constants.TableViewCellIdentifer.basketTableViewCell)
    self.basketTableView.rx.setDelegate(self)
      .disposed(by: self.disposeBag)
  }
}

extension SettingsView: UITableViewDelegate {
  public func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 100
  }
}
