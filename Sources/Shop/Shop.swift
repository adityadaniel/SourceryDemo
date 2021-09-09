//
//  Shop.swift
//
//
//  Created by Daniel Aditya Istyana on 07/09/21.
//

import Foundation

 public protocol BetterDecodable: Decodable, Equatable {}

public struct ShopTier: BetterDecodable {
    let tier: String
    let isOfficial: Bool
    let hasBebasOngkir: Int
}

public struct Shop: BetterDecodable {
    let id: String
    let name: String
    let profileImage: String
    let tier: ShopTier

    private enum CodingKeys: String, CodingKey {
        case id, name, profileImage, tier
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        name = try container.decode(String.self, forKey: .name)
        profileImage = try container.decode(String.self, forKey: .profileImage)
        tier = try container.decode(ShopTier.self, forKey: .tier)
    }
}
