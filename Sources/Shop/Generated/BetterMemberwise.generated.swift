// Generated using Sourcery 1.5.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

public struct Product { 
  private let id: Int
  private let name: String
  private let price: String
  private let isFreeShipping: Bool
  private let minimalOrder: Int

  public init(
    id: Int, 
    name: String, 
    price: String, 
    isFreeShipping: Bool, 
    minimalOrder: Int
  ) {
    self.id = id
    self.name = name
    self.price = price
    self.isFreeShipping = isFreeShipping
    self.minimalOrder = minimalOrder
  }
}
public struct ShopMerchant { 
  private let name: String
  private let isOfficialStore: Bool

  public init(
    name: String, 
    isOfficialStore: Bool
  ) {
    self.name = name
    self.isOfficialStore = isOfficialStore
  }
}
