//
//  mainViewController.swift
//  Spin_1.0.0
//
//  Created by Yohann Puri on 3/23/16.
//  Copyright © 2016 Yohann Puri. All rights reserved.
//

import UIKit

class mainViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    var testArray = ["Hi","Lets","Go"]
    var menuDown = false
    @IBOutlet weak var opButton: circularButton!
    @IBOutlet weak var addButton: circularButton!
    @IBOutlet weak var infoButton: circularButton!
    @IBOutlet weak var categoryButton: circularButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let opIm = UIImage(named: "Down_Arrow")
        let newOpIm = opIm?.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        
        opButton.setImage(newOpIm, forState: .Normal)
        opButton.imageEdgeInsets = UIEdgeInsets(top: 10.0,left: 7.0,bottom: 8.0,right: 7.0)
        opButton.imageView!.tintColor = UIColor.yellowColor()

        
        let addIm = UIImage(named: "Plus_sign")
        let newAddIm = addIm?.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        
        addButton.setImage(newAddIm,forState: UIControlState.Normal)
        addButton.imageEdgeInsets = UIEdgeInsets(top: 10.0,left: 7.0,bottom: 10.0,right: 7.0)
        addButton.imageView!.tintColor = UIColor(red: 0, green: 255/255, blue: 34/255, alpha: 255/255)
        
        let catIm = UIImage(named: "Folders")
        let newCatIm = catIm?.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        
        categoryButton.setImage(newCatIm,forState: UIControlState.Normal)
        categoryButton.imageEdgeInsets = UIEdgeInsets(top: 12.0,left: 7.0,bottom: 12.0,right: 7.0)
        categoryButton.imageView!.tintColor = UIColor.yellowColor()
        
        self.categoryButton.alpha = 0
        self.infoButton.alpha = 0
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func opButtonClicked(sender: AnyObject) {
        
        if(menuDown){
            UIView.animateWithDuration(0.5, animations: {
                self.opButton.center.y -= 165
                self.opButton.transform = CGAffineTransformMakeRotation(CGFloat(0))
                
                self.categoryButton.alpha = 0
                self.infoButton.alpha = 0
                }, completion: {
                    (result: Bool) in
                    self.menuDown = false
                    self.infoButton.hidden = true
                    self.categoryButton.hidden = true
            })
        }
        else
        {
        self.categoryButton.hidden = false
        self.infoButton.hidden = false
        UIView.animateWithDuration(0.5, animations: {
                self.opButton.center.y += 165
                self.opButton.transform = CGAffineTransformMakeRotation(CGFloat(-3.141593))
                self.categoryButton.alpha = 1
                self.infoButton.alpha = 1
            }, completion: {
        
                (result: Bool) in
                self.menuDown = true
        
        })
        }
    }


    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return testArray.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("colCell", forIndexPath: indexPath) as! circularCollectionViewCell
        cell.taskTitle!.text = testArray[indexPath.row]
        cell.layer.cornerRadius = 50
        return cell
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
