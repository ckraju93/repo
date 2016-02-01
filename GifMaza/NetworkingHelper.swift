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
    
    //MARK - Properties
    
    let URL = ""
    let betaKey = "dc6zaTOxFJmzC"
    
    
    let url = "http://kanchy.com/bhajanRepo.json"
    var translatorHelper = TranslatorHelper()
    
    func getDataFromServer(){
        let params = ["q": query, "offset":String(offset), "api_key": betaKey]
        Alamofire.request(.GET, URL, parameters: params).responseJSON{ jsonData in
            let swfityJsonVar = JSON(jsonData.result.value!)
            self.translatorHelper.translateJsonResponseToArray(swiftyJsonVar)
        }
        
    }
    
    
}