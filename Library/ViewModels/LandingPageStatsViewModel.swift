import ReactiveSwift

public protocol LandingPageStatsViewModelInputs {
  func configure(with card: LandingPageCardType)
}

public protocol LandingPageStatsViewModelOutputs {
  var descriptionLabelText: Signal<String, Never> { get }
  var quantityLabelText: Signal<String, Never> { get }
  var titleLabelText: Signal<String, Never> { get }
}

public protocol LandingPageStatsViewModelType {
  var inputs: LandingPageStatsViewModelInputs { get }
  var outputs: LandingPageStatsViewModelOutputs { get }
}

public final class LandingPageStatsViewModel: LandingPageStatsViewModelType, LandingPageStatsViewModelInputs,
LandingPageStatsViewModelOutputs {

  public init() {

    self.descriptionLabelText = cardSignal.map(\.description)
    self.quantityLabelText = cardSignal
      .map(\.quantity)
      .skipNil()
    self.titleLabelText = cardSignal.map(\.title)
  }

  private let (cardSignal, cardObserver) = Signal<LandingPageCardType, Never>.pipe()
  public func configure(with card: LandingPageCardType) {
    self.cardObserver.send(value: card)
  }

  public let descriptionLabelText: Signal<String, Never>
  public let quantityLabelText: Signal<String, Never>
  public let titleLabelText: Signal<String, Never>

  public var inputs: LandingPageStatsViewModelInputs { return self }
  public var outputs: LandingPageStatsViewModelOutputs { return self }
}
