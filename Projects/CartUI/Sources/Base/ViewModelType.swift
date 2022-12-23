import RxSwift

public protocol ViewModelType: AnyObject {
  associatedtype Input
  associatedtype Output
  associatedtype Model
  
  var disposeBag: DisposeBag { get set }
  var input: Input { get }
  var output: Output { get }
  var model: Model { get }
}
