// Generated using Sourcery 1.5.0 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT


public struct Shop {
  let id: String
  let name: String
  let profileImage: String
  let tier: ShopTier

  public init(
    id: String, 
    name: String, 
    profileImage: String, 
    tier: ShopTier
  ) {
    self.id = id
    self.name = name
    self.profileImage = profileImage
    self.tier = tier
  }
}

extension Shop: Decodable, Equatable {
  private enum CodingKeys: String, CodingKey {
    case id
    case name
    case profileImage
    case tier
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    id = try container.decode(String.self, forKey: .id)
    name = try container.decode(String.self, forKey: .name)
    profileImage = try container.decode(String.self, forKey: .profileImage)
    tier = try container.decode(ShopTier.self, forKey: .tier)
  }
}

public struct ShopReputation {
  let status: String
  let isOfficialStore: Bool
  let hasBebasOngkir: Int

  public init(
    status: String, 
    isOfficialStore: Bool, 
    hasBebasOngkir: Int
  ) {
    self.status = status
    self.isOfficialStore = isOfficialStore
    self.hasBebasOngkir = hasBebasOngkir
  }
}

extension ShopReputation: Decodable, Equatable {
  private enum CodingKeys: String, CodingKey {
    case status
    case isOfficialStore
    case hasBebasOngkir
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    status = try container.decode(String.self, forKey: .status)
    isOfficialStore = try container.decode(Bool.self, forKey: .isOfficialStore)
    hasBebasOngkir = try container.decode(Int.self, forKey: .hasBebasOngkir)
  }
}

public struct ShopTier {
  let tier: String
  let isOfficial: Bool
  let hasBebasOngkir: Int

  public init(
    tier: String, 
    isOfficial: Bool, 
    hasBebasOngkir: Int
  ) {
    self.tier = tier
    self.isOfficial = isOfficial
    self.hasBebasOngkir = hasBebasOngkir
  }
}

extension ShopTier: Decodable, Equatable {
  private enum CodingKeys: String, CodingKey {
    case tier
    case isOfficial
    case hasBebasOngkir
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    tier = try container.decode(String.self, forKey: .tier)
    isOfficial = try container.decode(Bool.self, forKey: .isOfficial)
    hasBebasOngkir = try container.decode(Int.self, forKey: .hasBebasOngkir)
  }
}
