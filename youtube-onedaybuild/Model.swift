//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by L90025519MAC on 29.07.2020.
//  Copyright © 2020 Ozge Gundogdu. All rights reserved.
//

import Foundation

class Model {
    
    func getVideos() {
        //Create a URL object
        let url = URL(string: Constants.API_URL)!
        
        /*
        guard url != nil else{
            return
        }*/
        
        //Get URL session object
        let session = URLSession.shared
        
        //Get a data task from the UrlSession object
        let dataTask = session.dataTask(with: url) { (data, response, error) in
            
            //Check if there is any error
            if error != nil || data == nil {
                return
            }
            
            //Parsing the data into video objects
            
            
        }
        
        //Kick off the task
        dataTask.resume()
        
    }
    
}
