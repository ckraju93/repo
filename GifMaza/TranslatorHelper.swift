//
//  TranslatorHelper.swift
//  BhajanWiki
//
//  Created by Kanchiraju on 1/1/16.
//  Copyright © 2016 Kanchy. All rights reserved.
//

import Foundation
import SwiftyJSON

class TranslatorHelper{
    
    var bhajanList = [Bhajan]()
    var arrRes = [[String: AnyObject]]()
    var databaseHelper = DatabaseHelper()
    
    
    func translateJsonResponseToArray(swiftyJsonVar: JSON){
        if let resData = swiftyJsonVar["bhajan"].arrayObject {
            self.arrRes = resData as! [[String:AnyObject]]
        }
        if self.arrRes.count > 0 {
            for bhajan in self.arrRes{
                
                let newBhajan = Bhajan()
                
                newBhajan.bhajanID = bhajan["bhajan_id"] as! String
                newBhajan.language = bhajan["language"] as! String
                newBhajan.lyrics = bhajan["lyrics"] as! String
                newBhajan.title = bhajan["title"] as! String
                newBhajan.translation = bhajan["translation"] as! String
                newBhajan.raag = bhajan["raag"] as! String
                newBhajan.taal = bhajan["taal"] as! String
                newBhajan.speed = bhajan["speed"] as! String
                              
                bhajanList.append(newBhajan)
                
            }// end for loop
            
        } else {
            print("cannot parse Bhajan")
        }// end else
        //print(bhajanList.count)
        databaseHelper.jsonToRealm(bhajanList)
    }
    
    
}