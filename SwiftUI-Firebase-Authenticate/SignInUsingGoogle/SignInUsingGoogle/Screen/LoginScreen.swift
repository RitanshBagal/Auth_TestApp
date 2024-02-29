//
//  ContentView.swift
//  SignInUsingGoogle
//
//  Created by Ritansh Bagal on 29/02/24.
//

import SwiftUI
import FirebaseAuth
import GoogleSignIn
import Firebase

struct LoginScreen: View {
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            VStack {
                LoginHeader()
                    .padding(.bottom)
                
                CustomTextfield(text: $username)
                
                CustomTextfield(text: $username)
                
                HStack {
                    Spacer()
                    Button(action: {}) {
                        Text("Forgot Password?")
                    }
                }
                .padding(.trailing, 24)
                
                CustomButton()
                
                
                Text("or")
                    .padding()
                
                GoogleSiginBtn {
                    // TODO: - Call the sign method here
                    FireAuth.share.signInWithGoogle(presenting: getRootViewController()){
                        error in
                        print("ERROR: \(error)")
                    }
                } // GoogleSiginBtn
            } // VStack
            .padding(.top, 52)
            Spacer()
        }
    }
}


struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
