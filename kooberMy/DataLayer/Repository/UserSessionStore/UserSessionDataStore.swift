//
//  UserSessionDataStore.swift
//  kooberMy
//
//  Created by rumy on 14/5/24.
//

import Foundation
import PromiseKit

public protocol UserSessionDataStore {
  func readUserSession() -> Promise<UserSession?>
  func save(userSession: UserSession) -> Promise<(UserSession)>
  func delete(userSession: UserSession) -> Promise<(UserSession)>
}
