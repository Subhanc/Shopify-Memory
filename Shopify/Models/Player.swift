//
//  Player.swift
//  Shopify
//
//  Created by Subhan Chaudhry on 2019-12-23.
//  Copyright © 2019 Subhan Chaudhry. All rights reserved.
//

import Foundation

/// The model of the player
class Player: ObservableObject {
    
    // The current score achieved in the current game
    @Published var currentScore: Int = 0
    
    // The current match pairs achieved in the current game
    @Published var currentMatches: Int = 0

    // The access token to access the Shopify API
    private static let accessToken: String = "c32313df0d0ef512ca64d5b336a0d7c6"
}
