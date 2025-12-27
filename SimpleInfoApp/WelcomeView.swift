//
//  WelcomeView.swift
//  SimpleInfoApp
//
//  Created by Sedef Bozkurt on 27.12.2025.
//

import SwiftUI

struct WelcomeView: View {
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
            
            Button {
                // Action will be added later
            } label: {
                Text("View Info")
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 13))
            }
            .padding(.horizontal)
            
            //Spacer()
        }
        .padding()
    }
}

#Preview {
    WelcomeView()
}
