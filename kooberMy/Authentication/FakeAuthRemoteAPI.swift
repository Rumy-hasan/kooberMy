//
//  FakeAuthRemoteAPI.swift
//  kooberMy
//
//  Created by rumy on 12/5/24.
//

import Foundation
import PromiseKit

public struct FakeAuthRemoteAPI: AuthRemoteAPI {
    
    public init(){}
    
    public func signIn(username: String, password: String) -> Promise<UserSession> {
        guard username == "johnny@gmail.com" && password == "password" else {
          return Promise(error: KooberKitError.any)
        }
        return Promise<UserSession> { seal in
          DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1) {
            let profile = UserProfile(name: "Johnny Appleseed",
                                      email: "johnny@gmail.com",
                                      mobileNumber: "510-736-8754",
                                      avatar: makeURL())
            let remoteUserSession = RemoteUserSession(token: "64652626")
            let userSession = UserSession(profile: profile, remoteSession: remoteUserSession)
            seal.fulfill(userSession)
          }
        }
    }
    
    public func signUp(account: NewAccount) -> Promise<UserSession> {
        let profile = UserProfile(name: account.fullName,
                                  email: account.email,
                                  mobileNumber: account.mobileNumber,
                                  avatar: makeURL())
        let remoteUserSession = RemoteUserSession(token: "984270985")
        let userSession = UserSession(profile: profile, remoteSession: remoteUserSession)
        return .value(userSession)
    }
}
