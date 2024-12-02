//
//  ContentView.swift
//  SUMaraphonTask1
//
//  Created by A.J on 02.12.2024.
//
//  SwiftUI Maraphon Task 1

import SwiftUI

struct ContentView: View {
    
    var rectangleHeight: Double = 50
    
    var body: some View {
        
        TabView {
            
            Tab("First", systemImage: "star.fill") {
     
                    ScrollView {
                        
                        ForEach(1...100, id: \.self) {
                            
                            Text("\($0)")
                                .font(.system(.title, design: .monospaced, weight: .regular))
                                .foregroundStyle(Color(.tertiaryLabel))
                            
                        }//: ForEach
                        .frame(maxWidth: .infinity)
                        
                    }//: ScrollView
                    .safeAreaInset(edge: .bottom) {
                        
                        Rectangle()
                            .foregroundStyle(.red)
                            .opacity(0.8)
                           .frame(height: rectangleHeight)
                           .ignoresSafeArea(edges: .horizontal)  // ignore safe area (for landscape mode)
                          
                    }
            }//: Tab
        }//: TabView
    }//: Body
}

#Preview("Portrait", traits: .portrait, body: {
    ContentView()
})


#Preview("LandscapeLeft", traits: .landscapeLeft, body: {
    ContentView()
})
