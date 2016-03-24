//
//  mainViewController.swift
//  Spin_1.0.0
//
//  Created by Yohann Puri on 3/23/16.
//  Copyright © 2016 Yohann Puri. All rights reserved.
//

import UIKit

class mainViewController: UIViewController {

    @IBOutlet weak var opButton: optionsButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        opButton.setImage(UIImage(named: "Down_Arrow"),forState: UIControlState.Normal)
        opButton.imageEdgeInsets = UIEdgeInsets(top: 6.0,left: 3.0,bottom: 4.0,right: 3.0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func opButtonClicked(sender: AnyObject) {
        
        UIView.animateWithDuration(2.0, animations: {
                self.opButton.center.y += 40
            }, completion: {
                (value: Bool) in
                
        })
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
