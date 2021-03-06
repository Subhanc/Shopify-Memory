//
//  PauseMenu.swift
//  Shopify
//
//  Created by Subhan Chaudhry on 2019-12-29.
//  Copyright © 2019 Subhan Chaudhry. All rights reserved.
//

import SwiftUI

/// The  menu to be dispalyed when the game state is paused. Includes a Reuume Button, Exit Button and Sound and Music On/Off buttons.
struct PauseMenuView: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    /// The model that holds all information of the game.
    @EnvironmentObject var game: Game
    
    var body: some View {
        
        ZStack {
            CardsFallingAnimationView()
                .edgesIgnoringSafeArea(.all)
            background()
            VStack(spacing: 15)  {
                
                LogoView(title: "Paused")
                
                HStack(spacing: 50) {
                    MusicButtonView()
                    SoundButtonView()
                }
                Button(action: {
                    self.game.isPaused.toggle()
                }) {
                    LargeButtonView(title: "Resume")
                }
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    LargeButtonView(title: "Exit")
                }
            }
        }
    }
    
    /// Returns a background frame for the pause menu.
    private func background() -> some View {
        Rectangle()
            .foregroundColor(.init("ShopifyBlue"))
            .frame(width: 350, height: 600)
            .background(Color.white)
            .cornerRadius(30)
            .shadow(color: Color("buttonShadow"), radius: 6, x: 4, y: 4)
    }
}

struct PauseMenu_Previews: PreviewProvider {
    static var previews: some View {
        PauseMenuView()
    }
}
