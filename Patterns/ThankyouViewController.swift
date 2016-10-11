//
//  ThankyouViewController.swift
//  collectionImages
//
//  Created by Shabnam Suresh on 2016-07-15.
//  Copyright © 2016 Shabnam Suresh. All rights reserved.
//

import UIKit

class ThankyouViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func restartBtnTapped(sender: AnyObject) {
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("startview") as! UINavigationController
        
        self.navigationController?.presentViewController(nextViewController, animated: false, completion: nil)
        self.navigationController?.dismissViewControllerAnimated(false, completion: nil)

        self.presentViewController(nextViewController, animated:true, completion:nil)

        
    }

}
