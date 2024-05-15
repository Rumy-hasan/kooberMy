//
//  UserSession.swift
//  kooberMy
//
//  Created by rumy on 7/8/23.
//

import Foundation

public class UserSession: Codable {
  // MARK: - Properties
    public let profile: UserProfile
    public let remoteSession: RemoteUserSession
    
    public init(profile: UserProfile, remoteSession: RemoteUserSession) {
        self.profile = profile
        self.remoteSession = remoteSession
    }
}

extension UserSession: Equatable {
    public static func ==(lhs: UserSession, rhs: UserSession) -> Bool {
        return lhs.profile == rhs.profile &&
               lhs.remoteSession == rhs.remoteSession
    }
}
