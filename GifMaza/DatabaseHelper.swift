//
//  DatabaseHelper.swift
//  BhajanWiki
//
//  Created by Kanchiraju on 1/1/16.
//  Copyright © 2016 Kanchy. All rights reserved.
//

import Foundation

class DatabaseHelper{
    let myRealm = try! Realm()
    var sampleString: String = ""
    
    func jsonToRealm(bhajanList: [Bhajan]){
        
       // print(bhajanList[0])
        print("----")
        for song in bhajanList{
            try! myRealm.write{
                myRealm.add(song)
            }
        }
        
    }
  
}
    
