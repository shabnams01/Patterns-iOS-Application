//
//  ImageViewController.swift
//  collectionImages
//
//  Created by Shabnam Suresh on 2016-07-03.
//  Copyright © 2016 Shabnam Suresh. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var imgFullSize: UIImageView!
    
    
    var img = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //self.imgFullSize.image = self.img
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "basketPattern"
        {
            let vc = segue.destinationViewController as! BasketViewController
            
            vc.title = "Create your own Pattern"
        }
    }

}
