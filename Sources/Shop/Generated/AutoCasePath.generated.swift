// Generated using Sourcery 1.5.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT
import CasePaths

extension CasePath where Root == ShopAction, Value == BasicInfoAction {
  internal static let shopActionToBasicInfo = CasePath(
    embed: ShopAction.basicInfo,
    extract: {
      guard case let .basicInfo(action) = $0 else { return nil }
      return action
    }
  )
}

extension CasePath where Root == ShopAction, Value == PerformanceAction {
  internal static let shopActionToPerformance = CasePath(
    embed: ShopAction.performance,
    extract: {
      guard case let .performance(action) = $0 else { return nil }
      return action
    }
  )
}

extension CasePath where Root == ShopAction, Value == ButtonAction {
  internal static let shopActionToButton = CasePath(
    embed: ShopAction.button,
    extract: {
      guard case let .button(action) = $0 else { return nil }
      return action
    }
  )
}

extension CasePath where Root == ShopAction, Value == WidgetAction {
  internal static let shopActionToWidget = CasePath(
    embed: ShopAction.widget,
    extract: {
      guard case let .widget(action) = $0 else { return nil }
      return action
    }
  )
}

extension CasePath where Root == ShopAction, Value == ProductCardAction {
  internal static let shopActionToProductCard = CasePath(
    embed: ShopAction.productCard,
    extract: {
      guard case let .productCard(action) = $0 else { return nil }
      return action
    }
  )
}

extension CasePath where Root == ShopState, Value == ShopContentState {
  internal static let shopStateToLoaded = CasePath(
    embed: ShopState.loaded,
    extract: {
      guard case let .loaded(state) = $0 else { return nil }
      return state
    }
  )
}

extension CasePath where Root == WidgetAction, Value == DisplaySingleColumnAction {
  internal static let widgetActionToDisplaySingleColumn = CasePath(
    embed: WidgetAction.displaySingleColumn,
    extract: {
      guard case let .displaySingleColumn(action) = $0 else { return nil }
      return action
    }
  )
}

extension CasePath where Root == WidgetAction, Value == SliderAction {
  internal static let widgetActionToSlider = CasePath(
    embed: WidgetAction.slider,
    extract: {
      guard case let .slider(action) = $0 else { return nil }
      return action
    }
  )
}

extension CasePath where Root == WidgetAction, Value == PlayWidgetAction {
  internal static let widgetActionToPlayWidget = CasePath(
    embed: WidgetAction.playWidget,
    extract: {
      guard case let .playWidget(action) = $0 else { return nil }
      return action
    }
  )
}

