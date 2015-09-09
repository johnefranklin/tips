//
//  SettingsViewController.swift
//  tips
//
//  Created by John Franklin on 9/9/15.
//  Copyright © 2015 JF. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var closeButton: UIButton!
    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func buttonPressed(sender: AnyObject) {
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.setInteger(defaultTipControl.selectedSegmentIndex, forKey: "defaultTipPercentage")
        defaults.synchronize()
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onEnd(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        defaultTipControl.selectedSegmentIndex = defaults.integerForKey("defaultTipPercentage")
    }

}
