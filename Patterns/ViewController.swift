//
//  ViewController.swift
//  collectionImages
//
//  Created by Shabnam Suresh on 2016-07-03.
//  Copyright © 2016 Shabnam Suresh. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
   // let startImgs = ["Pablo Esteva ©", "Pablo Esteva ©", "Pablo Esteva ©" , "Pablo Esteva ©", ""]
    
    let imgArray = [UIImage(named:"1"), UIImage(named:"2"), UIImage(named:"3"), UIImage(named:"5_1") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.navigationController?.navigationBar.translucent = true
        
        self.navigationController?.navigationBar.tintColor = UIColor.whiteColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.imgArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.imgViewCell?.image = self.imgArray[indexPath.row]
        //cell.titleLabel?.text = self.startImgs[indexPath.row]
        
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("showImage", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showImage"
        {
            let vc = segue.destinationViewController as! ImageViewController
            
            vc.title = "Instructions"
        }
    }
    
}

