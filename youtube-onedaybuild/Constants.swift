//
//  Constants.swift
//  youtube-onedaybuild
//
//  Created by L90025519MAC on 29.07.2020.
//  Copyright © 2020 Ozge Gundogdu. All rights reserved.
//

import Foundation

struct Constants {
    static var API_KEY = "AIzaSyDdWVwGVCM7nIB_BF6FIsF-Cf9M_3Qzu60"
    static var PLAYLIST_ID = "PLMRqhzcHGw1aLoz4pM_Mg2TewmJcMg9ua"
    static var API_URL = "https://www.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    
    
    func parseDate(date: String) -> Date? {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZ"
        if let formatedDate = formatter.date(from: date) {
            return formatedDate
        }
        return nil
    }
    
}
