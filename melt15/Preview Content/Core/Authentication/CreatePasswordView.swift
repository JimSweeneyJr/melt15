//
//  CreatePasswordView.swift
//  melt15
//
//  Created by James Sweeney on 3/18/24.
//

import SwiftUI

struct CreatePasswordView: View {
    
    
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
        
    var body: some View {
            
            VStack(spacing: 12) {
                Text("Create password")
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding(.top)
                
                Text("This password must at least 6 characters in length")
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 24)
                
               SecureField("Password", text: $password)
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .modifier(TextFieldModifier())
                    .padding(.top)
                
                NavigationLink {
                    CompleteSignUpView()
                        .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Next")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360, height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                      
                }
                .padding(.vertical)
                
                Spacer()
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large)
                        .onTapGesture {
                            dismiss()
                        }
                }
            }
    }
}

#Preview {
    CreatePasswordView()
}
