//
//  FriendModel.swift
//  Friends
//
//  Created by Tim Mitra on 2024-04-25.
//

import Foundation
import SwiftData

@Model
class FriendModel {
  var firstName: String
  var lastName: String
  
  init(firstName: String, lastName: String) {
    self.firstName = firstName
    self.lastName = lastName
  }
}

extension FriendModel {
  
  @MainActor
  static var preview: ModelContainer {
    let container = try! ModelContainer(for: FriendModel.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
    
    container.mainContext.insert(FriendModel(firstName: "Jason", lastName: "Barlow"))
    container.mainContext.insert(FriendModel(firstName: "Jennie", lastName: "Wilkinson"))
    container.mainContext.insert(FriendModel(firstName: "Lauren", lastName: "Brady"))
    container.mainContext.insert(FriendModel(firstName: "Matthew", lastName: "Schultz"))

    return container
  }
}

extension FriendModel {
  var viewName: PersonNameComponents {
    PersonNameComponents(givenName: firstName, familyName: lastName)
  }
}
