//
//  FirebaseConstants.swift
//  quickpicks
//
//  Created by Zhan Peng  Pan on 8/16/18.
//  Copyright © 2018 quickpicks. All rights reserved.
//

import Foundation

struct FirebaseConstants{
    static let COLLECTION_GAMES = "games"
    static let COLLECTION_CONTESTS = "contests"
    static let COLLECTION_DAILYLB = "dailyLB"
    
    static let COLLECTION_SPORTS = "sports"
    struct SPORTS {
        static let FIELD_CURRENTCONTEST = "currentContest"
        static let FIELD_ENTRIES = "entries"
        static let FIELD_ID = "id"
        static let FIELD_ISACTIVE = "isActive"
        static let FIELD_LASTCONTEST = "lastContest"
        static let FIELD_AWARDS = "awards"
    }
    
    static let COLLECTION_USERS = "users"
    struct USERS {
        static let FIELD_EMAIL = "email"
        static let FIELD_USERNAME = "username"
        static let FIELD_COINS = "coins"
        static let FIELD_PREVCOINS = "prevCoins"
        
        static let FIELD_NFL_POSITION = "NFLPosition"
        static let FIELD_NFL_PICKS = "NFLPicks"
    }
}
