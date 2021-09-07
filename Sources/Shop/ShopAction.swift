protocol AutoCasePath {}

enum BasicInfoAction: AutoCasePath {
  case didTap
}

enum PerformanceAction: AutoCasePath {
  case didTap
  case sendImpression
}

enum ButtonAction: AutoCasePath {
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

enum WidgetAction: AutoCasePath {
  case displaySingleColumn(DisplaySingleColumnAction)
  case slider(SliderAction)
  case playWidget(PlayWidgetAction)
}

enum ProductCardAction: AutoCasePath {
  case didTap
  case didAddToWishlist
}

enum ShopAction: AutoCasePath {
  case basicInfo(BasicInfoAction)
  case performance(PerformanceAction)
  case button(ButtonAction)
  case widget(WidgetAction)
  case productCard(ProductCardAction)
}

enum ShopState: AutoCasePath {
  case loading
  case loaded(ShopContentState)
  case error
}

struct ShopContentState {
    let name: String
    let id: Int
}
