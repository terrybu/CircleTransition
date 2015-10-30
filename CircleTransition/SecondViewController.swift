//
//  SecondViewController.swift
//  CircleTransition
//
//  Created by Terry Bu on 10/30/15.
//  Copyright © 2015 Terry Bu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    
    @IBAction func circleTapped(sender:UIButton) {
        self.navigationController?.popViewControllerAnimated(true)
    }
    
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

}
