//
//  SignInUsingGoogleApp.swift
//  SignInUsingGoogle
//
//  Created by Ritansh Bagal on 29/2/2024.
//

import SwiftUI

@main
struct SignInUsingGoogleApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @AppStorage("signIn") var isSignIn = false
    
    var body: some Scene {
        WindowGroup {
            if !isSignIn {
                LoginScreen()
            } else {
                Home()
            }
        }
    }
}
