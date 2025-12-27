//
//  WelcomeView.swift
//  SimpleInfoApp
//
//  Created by Sedef Bozkurt on 27.12.2025.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var showInfo = false
    
    var body: some View {
        VStack(spacing: 23) {
            
            Image(systemName: "info.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .foregroundStyle(.blue)
            
            Text("Welcome")
                .font(.title)
                .fontWeight(.bold)
            
            Text("This app provides simple and useful information in a clean and minimal design.")
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
                .padding(.horizontal)
            
            if showInfo {
                Text("SwiftUI helps you build beautiful apps with less code.")
                    .font(.callout)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.primary.opacity(0.80))
                    .padding()
                    .transition(.opacity)
            }
            
            Button {
                withAnimation {
                    showInfo.toggle()
                }
            } label: {
                Text(showInfo ? "Hide Info" : "View Info")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 13))
            }
            .padding(.horizontal)
        }
        .padding()
    }
}

#Preview {
    WelcomeView()
}
