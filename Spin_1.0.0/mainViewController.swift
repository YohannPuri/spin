//
//  mainViewController.swift
//  Spin_1.0.0
//
//  Created by Yohann Puri on 3/23/16.
//  Copyright © 2016 Yohann Puri. All rights reserved.
//

import UIKit

class mainViewController: UIViewController, UIScrollViewDelegate {

    var menuDown = false
    @IBOutlet weak var opButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var zoomButton: UIButton!
    @IBOutlet weak var categoryButton: UIButton!
    
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let opIm = UIImage(named: "Down_Arrow")
        let newOpIm = opIm?.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        
        opButton.setImage(newOpIm, forState: .Normal)
        opButton.imageEdgeInsets = UIEdgeInsets(top: 6.0,left: 3.0,bottom: 4.0,right: 3.0)
        opButton.imageView!.tintColor = UIColor.purpleColor()
        
        let zoomIm = UIImage(named: "Magnifying_glass")
        let newZoomIm = zoomIm?.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        
        zoomButton.setImage(newZoomIm,forState: UIControlState.Normal)
        zoomButton.imageEdgeInsets = UIEdgeInsets(top: 10.0,left: 10.0,bottom: 12.0,right: 10.0)
        
        let addIm = UIImage(named: "Plus_sign")
        let newAddIm = addIm?.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        
        addButton.setImage(newAddIm,forState: UIControlState.Normal)
        addButton.imageEdgeInsets = UIEdgeInsets(top: 5.0,left: 3.0,bottom: 5.0,right: 3.0)
        addButton.imageView!.tintColor = UIColor.greenColor()
        
        let catIm = UIImage(named: "Folders")
        let newCatIm = catIm?.imageWithRenderingMode(UIImageRenderingMode.AlwaysTemplate)
        
        categoryButton.setImage(newCatIm,forState: UIControlState.Normal)
        categoryButton.imageEdgeInsets = UIEdgeInsets(top: 5.0,left: 0.0,bottom: 5.0,right: 0.0)
        categoryButton.imageView!.tintColor = UIColor.magentaColor()
        
        self.categoryButton.alpha = 0
        self.infoButton.alpha = 0
        
        //mainScrollView.contentSize.height = 1000
        mainScrollView.contentSize.width = 2000
        mainScrollView.minimumZoomScale = CGFloat(0.2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func opButtonClicked(sender: AnyObject) {
        
        if(menuDown){
            UIView.animateWithDuration(0.5, animations: {
                self.opButton.center.y -= 135
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
                self.opButton.center.y += 135
                self.opButton.transform = CGAffineTransformMakeRotation(CGFloat(-3.141593))
                self.categoryButton.alpha = 1
                self.infoButton.alpha = 1
            }, completion: {
        
                (result: Bool) in
                self.menuDown = true
        
        })
        }
    }

    //func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
      //  return trialButton
    //}
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
