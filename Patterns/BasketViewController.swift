//
//  BasketViewController.swift
//  collectionImages
//
//  Created by Shabnam Suresh on 2016-07-03.
//  Copyright © 2016 Shabnam Suresh. All rights reserved.
//

import UIKit

class BasketViewController: UIViewController {
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    @IBOutlet weak var img5: UIImageView!
    @IBOutlet weak var img6: UIImageView!
    @IBOutlet weak var img7: UIImageView!
    @IBOutlet weak var img8: UIImageView!
    @IBOutlet weak var img9: UIImageView!
    
    var location = CGPointMake(0, 0)
        @IBAction func handleRotate(recognizer : UIRotationGestureRecognizer) {
        print("Img rotated")
        if let view = recognizer.view {
            view.transform = CGAffineTransformRotate(view.transform, recognizer.rotation)
            recognizer.rotation = 0
        }
        
        
    }
    
    @IBAction func handlePan(recognizer : UIPanGestureRecognizer) {
        print("Img panned")
        let translation = recognizer.translationInView(self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x,
                                  y:view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPointZero, inView: self.view)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
               
        let camera = UIBarButtonItem(barButtonSystemItem: .Camera, target: self, action: #selector(BasketViewController.screenShotMethod))
        self.navigationItem.rightBarButtonItem = camera
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func screenShotMethod() {
        //Create the UIImage
        UIGraphicsBeginImageContext(view.frame.size)
        view.layer.renderInContext(UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        //Save it to the camera roll
        UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
        
        let alertController = UIAlertController(title: "Success", message: "Your pattern has been saved into the Gallery", preferredStyle: .Alert)
       let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default) {
            UIAlertAction in
            
            let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("thankyouview") as! ThankyouViewController
            self.presentViewController(nextViewController, animated:true, completion:nil)
           
        }
        alertController.addAction(okAction)
        self.presentViewController(alertController, animated: true, completion: nil)
    }

    

    
}
