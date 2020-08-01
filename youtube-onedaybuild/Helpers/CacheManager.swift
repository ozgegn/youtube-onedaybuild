//
//  CacheManager.swift
//  youtube-onedaybuild
//
//  Created by L90025519MAC on 1.08.2020.
//  Copyright © 2020 Ozge Gundogdu. All rights reserved.
//

import Foundation

class CacheManager {
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url: String,_ data: Data) {
        cache[url] = data
    }
    
    static func getVideoCache(_ url: String) -> Data? {
        return cache[url]
    }
    
}
