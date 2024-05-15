//
//  KooberUserSessionRepository.swift
//  kooberMy
//
//  Created by rumy on 14/5/24.
//

import Foundation
import PromiseKit

class KooberUserSessionRepository: UserSessionRepository {
    //Dependencies
    let dataStore: UserSessionDataStore
    let remoteAPI: AuthRemoteAPI
    
    func readUserSession() -> Promise<UserSession?> {
        <#code#>
    }
    
    func signUp(newAccount: NewAccount) -> Promise<UserSession> {
        remoteAPI.signUp(account: newAccount)
    }
    
    func signIn(email: String, password: String) -> Promise<UserSession> {
        remoteAPI.signIn(username: email, password: password)
    }
    
    func signOut(userSession: UserSession) -> Promise<UserSession> {
        
    }
    
    
}
