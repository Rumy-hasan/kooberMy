//
//  MainViewModel.swift
//  kooberMy
//
//  Created by rumy on 7/8/23.
//

import Foundation
import Combine

public class MainViewModel: SignedInResponder, NotSignedInResponder {

  // MARK: - Properties
  @Published public private(set) var view: MainView = .launching

  // MARK: - Methods
  public init() {}

  public func notSignedIn() {
    view = .onboarding
  }

  public func signedIn(to userSession: UserSession) {
    view = .signedIn(userSession: userSession)
  }
}
