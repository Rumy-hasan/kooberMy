//
//  NewAccount.swift
//  kooberMy
//
//  Created by rumy on 12/5/24.
//

import Foundation

public typealias Secret = String

public struct NewAccount: Codable {
  // MARK: - Properties
  public let fullName: String
  public let nickname: String
  public let email: String
  public let mobileNumber: String
  public let password: Secret

  // MARK: - Methods
  public init(fullName: String,
              nickname: String,
              email: String,
              mobileNumber: String,
              password: Secret) {
    self.fullName = fullName
    self.nickname = nickname
    self.email = email
    self.mobileNumber = mobileNumber
    self.password = password
  }
}
