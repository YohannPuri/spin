//
//  mainViewController.swift
//  Spin_1.0.0
//
//  Created by Yohann Puri on 3/23/16.
//  Copyright © 2016 Yohann Puri. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

    var menuDown = false
    @IBOutlet weak var opButton: optionsButton!
    @IBOutlet weak var addButton: optionsButton!
    @IBOutlet weak var infoButton: optionsButton!
    @IBOutlet weak var zoomButton: optionsButton!
    @IBOutlet weak var categoryButton: optionsButton!
    
    
    @IBOutlet weak var mainScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        opButton.setImage(UIImage(named: "Down_Arrow"),forState: UIControlState.Normal)
        opButton.imageEdgeInsets = UIEdgeInsets(top: 6.0,left: 3.0,bottom: 4.0,right: 3.0)
        
        zoomButton.setImage(UIImage(named: "Magnifying_glass"),forState: UIControlState.Normal)
        zoomButton.imageEdgeInsets = UIEdgeInsets(top: 10.0,left: 10.0,bottom: 12.0,right: 10.0)
        
        addButton.setImage(UIImage(named: "Plus_sign"),forState: UIControlState.Normal)
        addButton.imageEdgeInsets = UIEdgeInsets(top: 10.0,left: 10.0,bottom: 12.0,right: 10.0)
        
        self.categoryButton.alpha = 0
        self.infoButton.alpha = 0
        
        mainScrollView.contentSize.height = 1000
        mainScrollView.contentSize.width = 1000
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
