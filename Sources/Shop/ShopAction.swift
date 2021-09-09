import CasePaths


enum BasicInfoAction {
  case didTap
}

enum PerformanceAction {
  case didTap
  case sendImpression
}

enum ButtonAction {
  case didTapFollowButton
  case didTapChatButton
  case didTapShopNote
}

enum DisplaySingleColumnAction {
  case didTapCta
  case didTap
  case sendImpressionTracker
}

enum SliderAction {
  case didTap
  case didTapCta
}

enum PlayWidgetAction {
  case didLoad
  case sendImpression
  case startAutoplay
  case stopPlaying
}

enum WidgetAction {
  case displaySingleColumn(DisplaySingleColumnAction)
  case slider(SliderAction)
  case playWidget(PlayWidgetAction)
}

enum ProductCardAction {
  case didTap
  case didAddToWishlist
}
enum ShopCredibilityAction {
    case didTap
}

//sourcery: autoCasePath
enum ShopAction {
  case basicInfo(BasicInfoAction)
  case performance(PerformanceAction)
  case button(ButtonAction)
  case widget(WidgetAction)
  case productCard(ProductCardAction)
    case shopCredibility(ShopCredibilityAction)
}

enum ShopState {
  case loading
  case loaded(ShopContentState)
  case error
}

struct ShopContentState {
    let name: String
    let id: Int
}

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

extension CasePath where Root == ShopAction, Value == ShopCredibilityAction {
   internal static let shopActionToShopCredibility = CasePath(
        embed: ShopAction.shopCredibility,
        extract: {
            guard case let .shopCredibility(action) = $0 else { return nil }
            return action
        }
   )
}
