import UIKit

public final class StoreViewController: BaseViewController {
  
  private var viewModel: StoreViewModel {
    return self._viewModel as! StoreViewModel
  }
  
  private var mainView: StoreView {
    return self.view as! StoreView
  }
  
  public override func loadView() {
    self.view = StoreView()
  }
  
  override func bindViewModel() {
    self.viewModel.output.basketItems
      .subscribe { item in
        print(item)
      }
      .disposed(by: self.disposeBag)
    
    self.viewModel.output.isBasketButtonEnabled
      .subscribe { isEnable in
        print(isEnable)
      }
      .disposed(by: self.disposeBag)
  }
}
