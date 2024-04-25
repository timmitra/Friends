//
//  ContentView.swift
//  Friends
//
//  Created by Tim Mitra on 2024-04-25.
//

import SwiftUI
import SwiftData

struct MockData_Intro: View {
  @Query private var friends: [FriendModel]
  
    var body: some View {
      List(friends) { friend in
        HStack {
          Text(friend.firstName)
          Text(friend.lastName)
        }
      }
    }
}

//#Preview {
//    MockData_Intro()
//    .modelContainer(FriendModel.preview)
//}

/* alternate way to preview mock */
#Preview {
  let container = try! ModelContainer(for: FriendModel.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
  
  container.mainContext.insert(FriendModel(firstName: "Jason", lastName: "Barlow"))
  container.mainContext.insert(FriendModel(firstName: "Jennie", lastName: "Wilkinson"))
  container.mainContext.insert(FriendModel(firstName: "Lauren", lastName: "Brady"))
  container.mainContext.insert(FriendModel(firstName: "Matthew", lastName: "Schultz"))
  
  return MockData_Intro()
    .modelContainer(container)
}
