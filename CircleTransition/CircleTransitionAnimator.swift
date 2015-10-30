//
//  CircleTransitionAnimator.swift
//  CircleTransition
//
//  Created by Terry Bu on 10/29/15.
//  Copyright © 2015 Terry Bu. All rights reserved.
//

import UIKit

class CircleTransitionAnimator: NSObject, UIViewControllerAnimatedTransitioning{
    
    weak var transitionContext: UIViewControllerContextTransitioning?
    
    func transitionDuration(transitionContext: UIViewControllerContextTransitioning?) -> NSTimeInterval {
        return 0.5
    }
    
    func animateTransition(transitionContext: UIViewControllerContextTransitioning) {
        //1
        self.transitionContext = transitionContext
        
        //2
        var containerView = transitionContext.containerView()
        var fromViewController = transitionContext.viewControllerForKey(UITransitionContextFromViewControllerKey) as! ViewController
        var toViewController = transitionContext.viewControllerForKey(UITransitionContextToViewControllerKey) as! ViewController
        
        let sourceView = fromViewController.view
        let destView = toViewController.view
        
        //3
        containerView!.addSubview(destView)
        
        destView.frame = CGRectOffset(destView.frame, 0, destView.frame.size.height);
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            destView.frame = CGRectOffset(destView.frame, 0, -destView.frame.size.height);
            destView.layoutIfNeeded()
            }) { (finished) -> Void in
                transitionContext.completeTransition(true)
        }
        
    }
    
    override func animationDidStop(anim: CAAnimation, finished flag: Bool) {
        self.transitionContext?.completeTransition(!self.transitionContext!.transitionWasCancelled())
        self.transitionContext?.viewControllerForKey(UITransitionContextFromViewControllerKey)?.view.layer.mask = nil
    }
    
    
}
