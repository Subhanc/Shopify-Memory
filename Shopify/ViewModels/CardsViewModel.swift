//
//  CardsViewModel.swift
//  Shopify
//
//  Created by Subhan Chaudhry on 2019-11-30.
//  Copyright © 2019 Subhan Chaudhry. All rights reserved.
//

import SwiftUI
import Combine

/// View Model which holds all information of the cards field, and loading the data from the backend.
class CardsViewModel: ObservableObject {
    
    /// The cards to be used to in the game
    @Published public var cards = [[Card]]()
    
    /// The game created by the player
    var game: Game
    
    /// Accessing the global instance of Service.
    let service = Service.shared
    
    /**
     Initializes a  model that handles the data for the CardsView given a game object.
     
     - Parameters:
     - game: The game created by the player.
     
     - Returns: A model that holds information about the cards playing field to be used in the CardsView.
     */
    init(withGame game: Game) {
        self.game = game
    }
    
    /**
     Calling this will populate the 'cards' array with a 2-D list of cards from the Shopify Products API.
     */
    func loadCards(_ completion: (() -> Void)? = nil) {
        // Getting data from server.
        self.service.getCardData { result in
            // Saftley unwrapping the result.
            if let localCards = result.value {
                // Subset that holds the unique cards that will exist in the game
                var subset = localCards[..<self.game.gameDetails.numberOfCardPairs]
                let cardPairs = subset
                
                // Duplicating the unique cards to create matching pairs.
                for _ in 1...self.game.gameDetails.cardsPerMatch-1 {
                    subset.append(contentsOf: cardPairs.map { $0.copy() })
                }
                // Shuffling and converting array to 2-D array to be used as a grid.
                let chunkedCards = subset.shuffled().chunk(into: self.game.gameDetails.gridSize.x)
                
                self.cards = Array(chunkedCards[..<((self.game.gameDetails.numberOfCardPairs * self.game.gameDetails.cardsPerMatch) / self.game.gameDetails.gridSize.x)])
                
                if let completion = completion {
                    completion()
                }
            }
        }
    }
    
    /// Flips over all cards on the playing field displaying the face of each caard for 7 seconds then flips the cards back over.
    func showAllCards() {
        
        for row in self.cards {
            for card in row {
                card.isFlipped = true
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
            withAnimation(.easeOut(duration: 0.4)) {
                for row in self.cards {
                    for card in row {
                        card.isFlipped = false
                    }
                }
                self.objectWillChange.send()
            }
        }
    }
}
