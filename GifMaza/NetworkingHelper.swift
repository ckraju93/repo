//
//  NetworkingHelper.swift
//  BhajanWiki
//
//  Created by Kanchiraju on 1/1/16.
//  Copyright © 2016 Kanchy. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class NetworkingHelper{
    
    var gifList = [Gif]()
    var arrRes = [[String: AnyObject]]()
    
    //MARK - Properties
    
    let URL = "http://api.giphy.com/v1/gifs/search?&api_key=dc6zaTOxFJmzC&offset=0&q=funny+cats"
    let betaKey = "dc6zaTOxFJmzC"
    
    
    func getDataFromServer(query: String, offset: Int){
        let params = ["q": query, "offset":String(offset), "api_key": betaKey]
        Alamofire.request(.GET, URL, parameters: params).responseJSON{ jsonData in
            let swfityJsonVar = JSON(jsonData.result.value!)
            self.translateJsonResponseToArray(swfityJsonVar)
            
        }
        
    }
    
    
    func translateJsonResponseToArray(swiftyJsonVar: JSON){
        if let resData = swiftyJsonVar["bhajan"].arrayObject {
            self.arrRes = resData as! [[String:AnyObject]]
        }
        if self.arrRes.count > 0 {
            for gif in self.arrRes{
                
                let gifImage = Gif()
                
                gifImage.id = gif["id"] as! String
                gifImage.sourceUrl = gif["source"] as! String
                gifImage.slug = gif["slug"] as! String
                gifImage.fixedWidthUrl = gif["images"]!["fixed_width"]!!["url"] as! String
                gifImage.originalUrl = gif["images"]!["original"]!!["url"] as! String
                gifImage.height = gif["images"]!["original"]!!["height"] as! Int
                gifImage.width = gif["images"]!["original"]!!["widht"] as! Int
                
                gifList.append(gifImage)
                
            }// end for loop
            
        } else {
            print("cannot parse Bhajan")
        }// end else
        //print(bhajanList.count)

    }
    
}