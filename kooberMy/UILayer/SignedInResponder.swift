//
//  SignedInResponder.swift
//  kooberMy
//
//  Created by rumy on 7/8/23.
//

import Foundation

public protocol SignedInResponder {
  func signedIn(to userSession: UserSession)
}
