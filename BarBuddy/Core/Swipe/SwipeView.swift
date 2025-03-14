//
//  SwipeView.swift
//  BarBuddy
//
//  Created by Andrew Betancourt on 2/25/25.
//


import SwiftUI

struct SwipeView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("DarkBlue")
                    .ignoresSafeArea()
                
                VStack {
                    // Top Bar
                    HStack {
                        HStack(spacing: 4) {
                            Text("@ Hideaway")
                                .font(.title2)
                                .bold()
                                .foregroundColor(.white)
                                .padding(.horizontal, 15)
                                .padding(.vertical, 8)
                                .background(Color("Salmon").opacity(0.3))
                                .cornerRadius(25)
                        }
                        .padding()
                        
                        Spacer()
                    }
                    
                    // Card Stack with Side Buttons
                    ZStack {
                        ForEach(0..<3) { index in
                            SwipeCard()
                                .overlay(
                                    HStack {
                                        // Left X Button
                                        Button(action: {}) {
                                            Circle()
                                                .fill(Color.white)
                                                .frame(width: 54, height: 54)
                                                .shadow(radius: 5)
                                                .overlay(
                                                    Image(systemName: "xmark")
                                                        .font(.system(size: 30))
                                                        .foregroundColor(.red)
                                                )
                                        }
                                        .padding(.leading, 30)
                                        
                                        Spacer()
                                        
                                        // Right Check Button
                                        Button(action: {}) {
                                            Circle()
                                                .fill(Color.white)
                                                .frame(width: 54, height: 54)
                                                .shadow(radius: 5)
                                                .overlay(
                                                    Image(systemName: "checkmark")
                                                        .font(.system(size: 30))
                                                        .foregroundColor(Color("Salmon"))
                                                )
                                        }
                                        .padding(.trailing, 30)
                                    }
                                    .offset(y: UIScreen.main.bounds.height * 0.05)  // Changed from -0.05 to 0.05 to move buttons down
                                )
                        }
                    }
                    
                    Spacer()  // Remove bottom button section and use spacer
                }
            }
        }
    }
}
