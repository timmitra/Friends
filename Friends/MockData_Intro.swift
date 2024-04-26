//
//  ContentView.swift
//  Friends
//
//  Created by Tim Mitra on 2024-04-25.
//

import SwiftUI
import SwiftData

struct MockData_Intro: View {
  @Environment(\.modelContext) private var modelContext
  @Query private var friends: [FriendModel]
  @State private var count = 0
  
    var body: some View {
      NavigationStack {
        List(friends) { friend in
          HStack {
            Text(friend.viewName, format: .name(style: .medium))
          }
        }
        .navigationTitle("modelContainer")
      }
      .font(.title)
    }
}

#Preview {
    MockData_Intro()
    .modelContainer(FriendModel.preview)
}

/* alternate way to preview mock */
//#Preview {
//  let container = try! ModelContainer(for: FriendModel.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
//  
//  container.mainContext.insert(FriendModel(firstName: "Jason", lastName: "Barlow"))
//  container.mainContext.insert(FriendModel(firstName: "Jennie", lastName: "Wilkinson"))
//  container.mainContext.insert(FriendModel(firstName: "Lauren", lastName: "Brady"))
//  container.mainContext.insert(FriendModel(firstName: "Matthew", lastName: "Schultz"))
//  
//  return MockData_Intro()
//    .modelContainer(container)
//}
