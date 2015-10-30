//
//  TerryNavigationControllerDelegate.swift
//  CircleTransition
//
//  Created by Terry Bu on 10/29/15.
//  Copyright © 2015 Terry Bu. All rights reserved.
//

import UIKit

class TerryNavigationControllerDelegate: NSObject, UINavigationControllerDelegate {
    
    func navigationController(navigationController: UINavigationController, animationControllerForOperation operation: UINavigationControllerOperation, fromViewController fromVC: UIViewController, toViewController toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        if operation == UINavigationControllerOperation.Push {
            if fromVC.isKindOfClass(ViewController) && toVC.isKindOfClass(SecondViewController) {
                return CircleTransitionAnimator()
            }
        }
        return nil
    }
    
}
