//
//  GiphyAPIClient.swift
//  GifMaza
//
//  Created by Kanchiraju on 1/31/16.
//  Copyright © 2016 Kanchy. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class GiphyAPIClient {
    
    let URL = "http://api.giphy.com/v1/gifs/search"
    let betaKey = "dc6zaTOxFJmzC"
    
    class var sharedInstance : GiphyAPIClient {
        struct Static {
            static let instance : GiphyAPIClient = GiphyAPIClient()
        }
        return Static.instance
    }
    
    
    func gifsForQuery(query: String, offset: Int, callback: ([Gif], NSError?)->()) {
        let params = ["q": query, "offset":String(offset), "api_key": betaKey]
        Alamofire.request(.GET, URL, parameters: params).responseJSON{ jsonData in
                let swfityJsonVar = JSON(jsonData.result.value!)
                self.
            
        }
    }
}
