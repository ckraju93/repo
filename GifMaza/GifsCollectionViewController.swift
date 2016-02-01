//
//  GifsCollectionViewController.swift
//  GifMaza
//
//  Created by Kanchiraju on 1/31/16.
//  Copyright © 2016 Kanchy. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class GifsCollectionViewController: UICollectionViewController {

    //MARK:- Properties
    
    //let inspirations = Inspiration.allInspirations()
    let colors = UIColor.palette()
    
    @IBOutlet weak var addLogButton: UIBarButtonItem!
    
    
    let logsList = ["Hello", "Hi", "Namaste"]
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        if let patternImage = UIImage(named: "Pattern") {
            view.backgroundColor = UIColor(patternImage: patternImage)
        }
        collectionView!.backgroundColor = UIColor.whiteColor()
        
        
    }
    @IBAction func addButton(sender: UIBarButtonItem) {
        
        
    }
    
}

extension GifsCollectionViewController {
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return logsList.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Logs", forIndexPath: indexPath)
        
        if indexPath.item % 3 == 0{
            cell.contentView.backgroundColor = colors[2]
        } else if indexPath.item % 2 == 0 {
            cell.contentView.backgroundColor = colors[3]
        } else {
            cell.contentView.backgroundColor = colors[1]
        }
        
        return cell
    }
    
}

