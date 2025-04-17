//
//  Twitter_CloneApp.swift
//  Twitter-Clone
//
//  Created by BMIIT on 17/03/25.
//

import SwiftUI
import Firebase

@main
struct Twitter_CloneApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
        }
    }
}
