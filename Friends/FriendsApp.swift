//
//  FriendsApp.swift
//  Friends
//
//  Created by Tim Mitra on 2024-04-25.
//

import SwiftUI
import SwiftData

@main
struct FriendsApp: App {
    var body: some Scene {
        WindowGroup {
            MockData_Intro()
        }
        .modelContainer(FriendModel.preview)
    }
}
