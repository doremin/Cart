import CartCore

import UIKit

public final class SettingsViewController: BaseViewController {
  private var viewModel: SettingsViewModel {
    return self._viewModel as! SettingsViewModel
  }
  
  private var mainView: SettingsView {
    return self.view as! SettingsView
  }
  
  public override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  public override func loadView() {
    self.view = SettingsView()
  }
  
  override func bindViewModel() {
    self.viewModel.output.items
      .bind(to: self.mainView.basketTableView.rx.items(
        cellIdentifier: Constants.TableViewCellIdentifer.basketTableViewCell,
        cellType: BasketTableViewCell.self)) { (_, item, cell) in
          cell.item.onNext(item)
        }
      .disposed(by: self.disposeBag)
  }
}
