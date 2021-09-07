//
//  Shop.swift
//
//
//  Created by Daniel Aditya Istyana on 07/09/21.
//

import Foundation

protocol BetterDecodable {}

//public struct ShopReputation: BetterDecodable {
//    let status: String
//    let isOfficialStore: Bool
//    let hasBebasOngkir: Int
//}
//
//public struct ShopTier: BetterDecodable {
//    let tier: String
//    let isOfficial: Bool
//    let hasBebasOngkir: Int
//}
//
//public struct Shop: BetterDecodable {
//    let id: String
//    let name: String
//    let profileImage: String
//    let tier: ShopTier
//
//    public init(id: String, name: String, profileImage: String, tier: ShopTier) {
//        self.id = id
//        self.name = name
//        self.profileImage = profileImage
//        self.tier = tier
//    }
//}

//extension Shop: Decodable, Equatable {
//    private enum CodingKeys: String, CodingKey {
//        case id, name, profileImage, tier
//    }
//
//    public init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        id = try container.decode(String.self, forKey: .id)
//        name = try container.decode(String.self, forKey: .name)
//        profileImage = try container.decode(String.self, forKey: .profileImage)
//        let tierName = try container.decode(String.self, forKey: .tier)
//        tier = ShopTier(rawValue: tierName) ?? .regular
//    }
//}
