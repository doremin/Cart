import UIKit

import CartCore

import RxCocoa
import RxSwift

final public class HomeViewController: BaseViewController {
  
  private var viewModel: HomeViewModel {
    return self._viewModel as! HomeViewModel
  }
  
  private var mainView: HomeView {
    return self.view as! HomeView
  }
  
  public override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  public override func loadView() {
    self.view = HomeView()
  }
  
  override func bindViewModel() {
    self.viewModel.output.stores
      .bind(to: self.mainView.storeTableView.rx.items(
        cellIdentifier: Constants.TableViewCellIdentifer.storeTableViewCell,
        cellType: StoreTableViewCell.self)) { (_, store, cell) in
          cell.store.onNext(store)
        }
      .disposed(by: self.disposeBag)
    
    self.mainView.selectedStore
      .subscribe { [weak self] store in
        self?.viewModel.selectStore(store: store)
      }
      .disposed(by: self.disposeBag)
      
    
    self.viewModel.loadStores()
  }
}
