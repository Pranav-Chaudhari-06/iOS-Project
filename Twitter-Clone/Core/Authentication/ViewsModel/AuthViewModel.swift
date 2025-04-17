//
//  AuthViewModel.swift
//  Twitter-Clone
//
//  Created by Guest User on 22/03/25.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject{
    @Published var userSession: FirebaseAuth.User?
    init(){
        self.userSession = Auth.auth().currentUser
        print("DEBUG: User session is \(self.userSession)")
    }
    
    func login(withEmail email: String, password: String){
        print("DEBUG: Login with email \(email)")
    }
    func register(withEmail email: String, password: String, fullname: String, username: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error{
                print("DEBUG: Failed to register with error \(error.localizedDescription)")
                return
            }
            guard let user = result?.user else { return }
            self.userSession = user
            print("DENIG: Registered user successfully")
            print("DEBUG: User is \(self.userSession)")
            let data = ["email":email , "username":username.lowercased(),"fullname": fullname, "uid": user.uid]
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    print("DEBUG: Did upload user data..")
                }
        }
    }
    func singOut(){
        //sets user session to nil
        userSession = nil
            //signs user out on server
//        try? Auth.auth().signOut()
    }
}

