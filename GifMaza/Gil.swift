//
//  Gil.swift
//  GifMaza
//
//  Created by Kanchiraju on 1/31/16.
//  Copyright © 2016 Kanchy. All rights reserved.
//

import Foundation
import SwiftyJSON
import Alamofire


class Gif {
    
    var id: String = ""
    var source: String?
    var fixedWidthUrl: String?
    var originalUrl: String?
    var width: Int = 0
    var height: Int = 0
    var rating: String?
    
}

extension Gif {
    class func translateFromJSON(data: AnyObject?) -> [Gif] {
        if let data = data as? NSDictionary {
            let json = data
            if let jsonGifs = json["data"]!.array {
                
                //JSONValue it self confirm to Protocol "LogicValue", with JSONValue.JInvalid produce false and others produce true
                var gifs = [Gif]()
                for jsonGif in jsonGifs {
                    let gif = Gif()
                    gif.id = jsonGif["id"] as! string
                    gif.source = jsonGif["source"] as! string
                    gif.rating = jsonGif["rating"] as! string
                    gif.originalUrl = jsonGif["images"]["original"]["url"] as! string
                    gif.fixedWidthUrl = jsonGif["images"]["fixed_width"]["url"]as! string
                    gif.width = jsonGif["images"]["original"]["width"] as! integer!
                    gif.height = jsonGif["images"]["original"]["height"] as! integer!
                    gifs.append(gif)
                }
                return gifs
            }else{
                print(json)
            }
        }
        return [Gif]()
    }
}