//
//  ViewController.swift
//  CircleTransition
//
//  Created by Terry Bu on 10/29/15.
//  Copyright © 2015 Terry Bu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    
    @IBAction func circleTapped(sender:UIButton) {
        let image = UIImage(named: "ipad")
        let overlay = UIImageView(image: image)
        overlay.frame.size = CGSize(width: 100, height: 100)
        UIApplication.sharedApplication().delegate?.window!!.addSubview(overlay)
        
        self.navigationController?.popViewControllerAnimated(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

